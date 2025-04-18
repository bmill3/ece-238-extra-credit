// test/widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ripple_adder_web/main.dart';

void main() {
  testWidgets('HomePage shows the main adder visual placeholder', (
    WidgetTester tester,
  ) async {
    // Build the entire app
    await tester.pumpWidget(const RippleAdderApp());
    await tester.pumpAndSettle();

    // Verify that HomePage is rendered with the expected placeholder text
    expect(find.text('Main Ripple‑Carry Adder Visual Here'), findsOneWidget);
  });
}
