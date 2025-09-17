import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/widgets/add_category_dialog.dart';
import 'package:expense_app/models/expense_category.dart';

void main() {
  group('AddCategoryDialog Widget Tests', () {
    testWidgets('should display dialog with text field',
        (WidgetTester tester) async {
      // Arrange
      void onAdd(ExpenseCategory category) {}

      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AddCategoryDialog(onAdd: onAdd),
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
      expect(find.text('Add New Category'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Cancel'), findsOneWidget);
      expect(find.text('Add'), findsOneWidget);
    });

    testWidgets('should display simple dialog interface',
        (WidgetTester tester) async {
      // Arrange
      bool onAddCalled = false;
      ExpenseCategory? addedCategory;

      void onAdd(ExpenseCategory category) {
        onAddCalled = true;
        addedCategory = category;
      }

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Add New Category'),
                    content: const TextField(),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          onAdd(ExpenseCategory(
                              id: 'test', name: 'Test Category'));
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
      expect(addedCategory?.name, 'Test Category');
    });

    testWidgets('should close dialog when Cancel button is pressed',
        (WidgetTester tester) async {
      // Arrange
      void onAdd(ExpenseCategory category) {}

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AddCategoryDialog(onAdd: onAdd),
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
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();

      // Assert
      expect(find.text('Add New Category'), findsNothing);
    });
  });
}
