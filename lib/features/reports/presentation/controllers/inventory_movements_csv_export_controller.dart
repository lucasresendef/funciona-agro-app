import 'dart:async';
import 'dart:io';
import 'dart:ui' show Rect;

import 'package:field_management_app/core/errors/app_exception.dart';
import 'package:field_management_app/features/reports/data/services/inventory_movements_csv_export_service.dart';
import 'package:field_management_app/features/reports/domain/entities/csv_export_models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';

enum InventoryMovementsCsvExportStatus {
  idle,
  downloading,
  downloaded,
  sharing,
  saving,
  success,
  error,
}

class InventoryMovementsCsvExportState {
  const InventoryMovementsCsvExportState({
    this.status = InventoryMovementsCsvExportStatus.idle,
    this.downloadedFile,
    this.userMessage,
    this.errorMessage,
    this.savedPath,
  });

  final InventoryMovementsCsvExportStatus status;
  final InventoryMovementsCsvDownloadedFile? downloadedFile;
  final String? userMessage;
  final String? errorMessage;
  final String? savedPath;

  bool get isBusy =>
      status == InventoryMovementsCsvExportStatus.downloading ||
      status == InventoryMovementsCsvExportStatus.sharing ||
      status == InventoryMovementsCsvExportStatus.saving;

  InventoryMovementsCsvExportState copyWith({
    InventoryMovementsCsvExportStatus? status,
    InventoryMovementsCsvDownloadedFile? downloadedFile,
    String? userMessage,
    String? errorMessage,
    String? savedPath,
    bool clearError = false,
    bool clearMessage = false,
  }) {
    return InventoryMovementsCsvExportState(
      status: status ?? this.status,
      downloadedFile: downloadedFile ?? this.downloadedFile,
      userMessage: clearMessage ? null : (userMessage ?? this.userMessage),
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      savedPath: savedPath ?? this.savedPath,
    );
  }
}

final inventoryMovementsCsvExportControllerProvider =
    StateNotifierProvider.autoDispose<
      InventoryMovementsCsvExportController,
      InventoryMovementsCsvExportState
    >((ref) {
      return InventoryMovementsCsvExportController(
        ref.read(inventoryMovementsCsvExportServiceProvider),
      );
    });

class InventoryMovementsCsvExportController
    extends StateNotifier<InventoryMovementsCsvExportState> {
  InventoryMovementsCsvExportController(this._service)
    : super(const InventoryMovementsCsvExportState());

  final InventoryMovementsCsvExportService _service;

  Future<void> exportCsv(InventoryMovementsCsvExportParams params) async {
    debugPrint(
      '[CSV Export][Controller] exportCsv iniciado mode=${params.mode.value} '
      'farmId=${params.farmId} from=${params.from?.toIso8601String()} '
      'to=${params.to?.toIso8601String()}',
    );
    state = state.copyWith(
      status: InventoryMovementsCsvExportStatus.downloading,
      userMessage: 'Baixando CSV...',
      clearError: true,
    );

    try {
      final file = await _service.downloadCsv(params);
      debugPrint(
        '[CSV Export][Controller] download concluido path=${file.tempFilePath} '
        'filename=${file.filename} size=${file.sizeInBytes}',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.downloaded,
        downloadedFile: file,
        userMessage: 'Download concluído com sucesso.',
        clearError: true,
      );
    } on AppException catch (error) {
      debugPrint(
        '[CSV Export][Controller] erro de negocio no download '
        'statusCode=${error.statusCode} message=${error.message}',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.error,
        errorMessage: _friendlyError(error),
      );
    } catch (error, stackTrace) {
      debugPrint(
        '[CSV Export][Controller] erro inesperado no download: $error\n$stackTrace',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.error,
        errorMessage: 'Não foi possível baixar o arquivo CSV.',
      );
    }
  }

  Future<void> shareDownloadedCsv({Rect? sharePositionOrigin}) async {
    final file = state.downloadedFile;
    if (file == null) {
      debugPrint('[CSV Export][Controller] share abortado: arquivo nulo');
      return;
    }
    debugPrint(
      '[CSV Export][Controller] share iniciado path=${file.tempFilePath} '
      'filename=${file.filename} origin=$sharePositionOrigin',
    );

    state = state.copyWith(
      status: InventoryMovementsCsvExportStatus.sharing,
      userMessage: 'Abrindo compartilhamento...',
      clearError: true,
    );

    try {
      await _service.shareDownloadedCsv(file, sharePositionOrigin);
      debugPrint('[CSV Export][Controller] share concluido');
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.success,
        userMessage: 'Arquivo pronto para compartilhamento.',
      );
    } on AppException catch (error) {
      debugPrint(
        '[CSV Export][Controller] erro de negocio no share '
        'statusCode=${error.statusCode} message=${error.message}',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.error,
        errorMessage: _friendlyError(error),
      );
    } catch (error, stackTrace) {
      debugPrint(
        '[CSV Export][Controller] erro inesperado no share: $error\n$stackTrace',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.error,
        errorMessage: 'Falha ao compartilhar o arquivo.',
      );
    }
  }

  Future<void> saveDownloadedCsvAs() async {
    final file = state.downloadedFile;
    if (file == null) {
      debugPrint('[CSV Export][Controller] save abortado: arquivo nulo');
      return;
    }
    debugPrint(
      '[CSV Export][Controller] save iniciado path=${file.tempFilePath} '
      'filename=${file.filename}',
    );

    state = state.copyWith(
      status: InventoryMovementsCsvExportStatus.saving,
      userMessage: 'Escolha onde salvar o arquivo...',
      clearError: true,
    );

    try {
      final savedPath = await _service.saveAsDownloadedCsv(file);
      if (savedPath == null) {
        debugPrint('[CSV Export][Controller] save cancelado pelo usuario');
        state = state.copyWith(
          status: InventoryMovementsCsvExportStatus.idle,
          userMessage: 'Salvamento cancelado.',
        );
        return;
      }
      debugPrint('[CSV Export][Controller] save concluido destino=$savedPath');

      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.success,
        savedPath: savedPath,
        userMessage: 'Arquivo salvo em $savedPath',
      );
    } on AppException catch (error) {
      debugPrint(
        '[CSV Export][Controller] erro de negocio no save '
        'statusCode=${error.statusCode} message=${error.message}',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.error,
        errorMessage: _friendlyError(error),
      );
    } catch (error, stackTrace) {
      debugPrint(
        '[CSV Export][Controller] erro inesperado no save: $error\n$stackTrace',
      );
      state = state.copyWith(
        status: InventoryMovementsCsvExportStatus.error,
        errorMessage: 'Falha ao salvar arquivo no dispositivo.',
      );
    }
  }

  @override
  void dispose() {
    final path = state.downloadedFile?.tempFilePath;
    if (path != null) {
      unawaited(_cleanupTempFile(path));
    }
    super.dispose();
  }

  Future<void> _cleanupTempFile(String path) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        debugPrint('[CSV Export][Controller] removendo temp file: $path');
        await file.delete();
      }
    } catch (error, stackTrace) {
      debugPrint(
        '[CSV Export][Controller] falha ao remover temp file: $error\n$stackTrace',
      );
    }
  }

  String _friendlyError(AppException error) {
    switch (error.statusCode) {
      case 401:
        return 'Sua sessão expirou. Faça login novamente para exportar.';
      case 403:
        return 'Você não tem permissão para exportar este relatório.';
      case 422:
        return error.message.isEmpty
            ? 'Os filtros informados são inválidos para exportação.'
            : error.message;
      case 500:
        return 'Erro interno ao gerar CSV. Tente novamente em instantes.';
      default:
        return error.message.isEmpty
            ? 'Falha ao exportar CSV. Tente novamente.'
            : error.message;
    }
  }
}
