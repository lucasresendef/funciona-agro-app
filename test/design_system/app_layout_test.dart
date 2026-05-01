import 'package:field_management_app/design_system/foundations/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('formFieldWidth clamps for compact screens', (tester) async {
    tester.view.physicalSize = const Size(360, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    late double width;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            width = AppLayout.formFieldWidth(context, 720);
            return const SizedBox.shrink();
          },
        ),
      ),
    );

    expect(width, lessThan(360));
    expect(width, greaterThanOrEqualTo(220));
  });
}
