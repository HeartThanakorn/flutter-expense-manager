import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic Widget Tests', () {
    testWidgets('should create a basic widget', (WidgetTester tester) async {
      // Build a simple test widget
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: Text('Test Widget'),
            ),
          ),
        ),
      );

      // Verify the widget displays correctly
      expect(find.text('Test Widget'), findsOneWidget);
    });

    testWidgets('should handle button tap', (WidgetTester tester) async {
      bool buttonPressed = false;

      // Build a widget with a button
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => buttonPressed = true,
                child: const Text('Press Me'),
              ),
            ),
          ),
        ),
      );

      // Tap the button
      await tester.tap(find.text('Press Me'));
      await tester.pumpAndSettle();

      // Verify button was pressed
      expect(buttonPressed, true);
    });
  });
}
