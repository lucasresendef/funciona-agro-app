import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/domain/repositories/reports_repository.dart';
import 'package:field_management_app/features/reports/domain/usecases/reports_usecases.dart';
import 'package:field_management_app/features/reports/presentation/controllers/reports_controller.dart';
import 'package:field_management_app/features/reports/presentation/pages/reports_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _NoopRepository implements ReportsRepository {
  @override
  Future<ReportJobCreated> createInventoryMovementsCsvJob(
    CreateInventoryMovementsCsvJobInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<DownloadedReportFile> downloadReportJobCsv(String jobId) {
    throw UnimplementedError();
  }

  @override
  Future<ReportJob> getReportJob(String jobId) {
    throw UnimplementedError();
  }
}

class _FakeReportCsvController extends ReportCsvController {
  _FakeReportCsvController() : super(ReportsUseCases(_NoopRepository()));

  @override
  Future<void> generateCsv({
    required String farmId,
    required DateTime from,
    required DateTime to,
  }) async {
    state = const ReportCsvState(
      status: ReportFlowStatus.completed,
      filePath: '/tmp/relatorio.csv',
      userMessage: 'CSV gerado e salvo com sucesso.',
    );
  }
}

void main() {
  testWidgets('fluxo feliz básico exibe ações após gerar CSV', (tester) async {
    final farm = Farm(
      metadata: const AuditMetadata(id: 'farm-1', active: true),
      name: 'Fazenda Teste',
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          allActiveFarmsProvider.overrideWith((ref) async => [farm]),
          reportCsvControllerProvider.overrideWith(
            (ref) => _FakeReportCsvController(),
          ),
        ],
        child: const MaterialApp(home: OperationsReportPage()),
      ),
    );

    await tester.pumpAndSettle();

    await tester.tap(find.byType(DropdownButtonFormField<String>).first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Fazenda Teste').last);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Gerar CSV'));
    await tester.pumpAndSettle();

    expect(find.text('CSV gerado e salvo com sucesso.'), findsOneWidget);
    expect(find.text('Compartilhar'), findsOneWidget);
    expect(find.text('Abrir'), findsOneWidget);
  });
}
