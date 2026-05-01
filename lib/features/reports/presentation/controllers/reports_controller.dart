import 'package:field_management_app/core/errors/app_exception.dart';
import 'package:field_management_app/features/reports/data/repositories/reports_repository_impl.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/domain/usecases/reports_usecases.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:open_filex/open_filex.dart';

enum ReportFlowStatus { idle, creating, processing, completed, failed }

class ReportCsvState {
  const ReportCsvState({
    this.status = ReportFlowStatus.idle,
    this.jobId,
    this.backendStatus,
    this.filePath,
    this.errorMessage,
    this.userMessage,
  });

  final ReportFlowStatus status;
  final String? jobId;
  final ReportJobStatus? backendStatus;
  final String? filePath;
  final String? errorMessage;
  final String? userMessage;

  bool get canCancel =>
      status == ReportFlowStatus.creating ||
      status == ReportFlowStatus.processing;

  ReportCsvState copyWith({
    ReportFlowStatus? status,
    String? jobId,
    ReportJobStatus? backendStatus,
    String? filePath,
    String? errorMessage,
    String? userMessage,
    bool clearFilePath = false,
    bool clearError = false,
  }) {
    return ReportCsvState(
      status: status ?? this.status,
      jobId: jobId ?? this.jobId,
      backendStatus: backendStatus ?? this.backendStatus,
      filePath: clearFilePath ? null : (filePath ?? this.filePath),
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      userMessage: userMessage ?? this.userMessage,
    );
  }
}

final reportCsvControllerProvider =
    StateNotifierProvider.autoDispose<ReportCsvController, ReportCsvState>((
      ref,
    ) {
      return ReportCsvController(
        ReportsUseCases(ref.read(reportsRepositoryProvider)),
      );
    });

class ReportCsvController extends StateNotifier<ReportCsvState> {
  ReportCsvController(this._useCases) : super(const ReportCsvState());

  final ReportsUseCases _useCases;
  int _executionId = 0;
  bool _cancelRequested = false;

  Future<void> generateCsv({
    required String farmId,
    required DateTime from,
    required DateTime to,
  }) async {
    final currentExecution = ++_executionId;
    _cancelRequested = false;

    state = const ReportCsvState(
      status: ReportFlowStatus.creating,
      userMessage: 'Criando solicitação do relatório...',
    );

    try {
      final created = await _useCases.createInventoryMovementsCsvJob(
        CreateInventoryMovementsCsvJobInput(farmId: farmId, from: from, to: to),
      );

      if (_isStale(currentExecution)) {
        return;
      }

      state = state.copyWith(
        status: ReportFlowStatus.processing,
        jobId: created.jobId,
        backendStatus: created.status,
        userMessage: 'Processando relatório no servidor...',
      );

      final finalJob = await _useCases.pollReportJobUntilFinalStatus(
        created.jobId,
        isCancelled: () => _cancelRequested || _isStale(currentExecution),
      );

      if (_isStale(currentExecution)) {
        return;
      }

      if (finalJob.status == ReportJobStatus.failed) {
        state = state.copyWith(
          status: ReportFlowStatus.failed,
          backendStatus: finalJob.status,
          errorMessage: finalJob.error ?? 'Falha ao processar relatório.',
          userMessage: 'Não foi possível gerar o CSV.',
          clearFilePath: true,
        );
        return;
      }

      if (!finalJob.hasFile) {
        state = state.copyWith(
          status: ReportFlowStatus.failed,
          errorMessage: 'O backend concluiu sem disponibilizar arquivo.',
          userMessage: 'Relatório concluído sem arquivo para download.',
          clearFilePath: true,
        );
        return;
      }

      final path = await _useCases.downloadAndSaveCsv(finalJob.jobId);

      if (_isStale(currentExecution)) {
        return;
      }

      state = state.copyWith(
        status: ReportFlowStatus.completed,
        backendStatus: finalJob.status,
        filePath: path,
        userMessage: 'CSV gerado e salvo com sucesso.',
        clearError: true,
      );
    } on ReportJobCancelledException {
      state = const ReportCsvState(
        status: ReportFlowStatus.idle,
        userMessage: 'Processo cancelado pelo usuário.',
      );
    } on ReportJobTimeoutException {
      state = state.copyWith(
        status: ReportFlowStatus.failed,
        errorMessage: 'Tempo limite atingido ao aguardar o relatório.',
        userMessage: 'O processamento demorou demais. Tente novamente.',
        clearFilePath: true,
      );
    } on AppException catch (error) {
      state = state.copyWith(
        status: ReportFlowStatus.failed,
        errorMessage: error.message,
        userMessage: 'Falha de comunicação ao gerar relatório.',
        clearFilePath: true,
      );
    } catch (error) {
      if (kDebugMode) {
        debugPrint('[Reports] erro inesperado: $error');
      }
      state = state.copyWith(
        status: ReportFlowStatus.failed,
        errorMessage: 'Erro inesperado no fluxo de relatório.',
        userMessage: 'Não foi possível concluir o processo.',
        clearFilePath: true,
      );
    }
  }

  void cancel() {
    _cancelRequested = true;
    _executionId++;
    state = const ReportCsvState(
      status: ReportFlowStatus.idle,
      userMessage: 'Processo cancelado pelo usuário.',
    );
  }

  Future<void> shareLatestFile() async {
    final path = state.filePath;
    if (path == null || path.isEmpty) {
      return;
    }

    try {
      await _useCases.shareFile(path);
    } catch (_) {
      state = state.copyWith(
        status: ReportFlowStatus.failed,
        errorMessage: 'Falha ao compartilhar arquivo.',
        userMessage: 'Não foi possível compartilhar o arquivo.',
      );
    }
  }

  Future<void> openLatestFile() async {
    final path = state.filePath;
    if (path == null || path.isEmpty) {
      return;
    }

    try {
      final result = await _useCases.openFile(path);
      if (result.type != ResultType.done) {
        state = state.copyWith(
          status: ReportFlowStatus.failed,
          errorMessage: result.message,
          userMessage: 'Não foi possível abrir o arquivo.',
        );
      }
    } catch (_) {
      state = state.copyWith(
        status: ReportFlowStatus.failed,
        errorMessage: 'Falha ao abrir arquivo local.',
        userMessage: 'Não foi possível abrir o arquivo.',
      );
    }
  }

  bool _isStale(int executionId) => executionId != _executionId;
}
