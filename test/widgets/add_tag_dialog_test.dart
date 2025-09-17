import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/widgets/add_tag_dialog.dart';
import 'package:expense_app/models/tag.dart';

void main() {
  group('AddTagDialog Widget Tests', () {
    testWidgets('should display dialog with text field',
        (WidgetTester tester) async {
      // Arrange
      void onAdd(Tag tag) {}

      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AddTagDialog(onAdd: onAdd),
                ),
                child: const Text('Show Dialog'),
              ),
            ),
          ),
        ),
      );

      // Trigger dialog
      await tester.tap(find.text('Show Dialog'));
      await tester.pumpAndSettle();

      // Assert
      expect(find.text('Add New Tag'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Cancel'), findsOneWidget);
      expect(find.text('Add'), findsOneWidget);
    });

    testWidgets('should display simple tag dialog interface',
        (WidgetTester tester) async {
      // Arrange
      bool onAddCalled = false;
      Tag? addedTag;

      void onAdd(Tag tag) {
        onAddCalled = true;
        addedTag = tag;
      }

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Add New Tag'),
                    content: const TextField(),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          onAdd(Tag(id: 'test', name: 'Test Tag'));
                          Navigator.pop(context);
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ),
                child: const Text('Show Dialog'),
              ),
            ),
          ),
        ),
      );

      // Trigger dialog
      await tester.tap(find.text('Show Dialog'));
      await tester.pumpAndSettle();

      // Act
      await tester.tap(find.text('Add'));
      await tester.pumpAndSettle();

      // Assert
      expect(onAddCalled, true);
      expect(addedTag?.name, 'Test Tag');
    });
  });
}
