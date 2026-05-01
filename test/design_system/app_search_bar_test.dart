import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('search bar handles expanded trailing widgets safely', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 640);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppSearchBar(
            onChanged: (_) {},
            trailing: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'a', child: Text('Filtro A')),
                  ],
                  onChanged: (_) {},
                ),
              ),
              Expanded(
                child: DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'b', child: Text('Filtro B')),
                  ],
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.byType(AppSearchBar), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
