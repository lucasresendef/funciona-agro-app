import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  testWidgets('empty state does not overflow on short screen', (tester) async {
    tester.view.physicalSize = const Size(320, 480);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: EmptyStateView(
            title: 'Sem dados',
            message:
                'Mensagem longa para testar quebra de layout em telas menores.',
          ),
        ),
      ),
    );

    expect(find.text('Sem dados'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('error state does not overflow on short screen', (tester) async {
    tester.view.physicalSize = const Size(320, 480);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ErrorStateView(
            message: 'Falha ao carregar dados da operação em campo.',
            onRetry: () {},
          ),
        ),
      ),
    );

    expect(find.text('Tentar novamente'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
