import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/models/expense_category.dart';
import 'package:expense_app/models/tag.dart';

void main() {
  group('Expense Model Tests', () {
    test('should create expense correctly', () {
      // Arrange
      final expense = Expense(
        id: '1',
        amount: 25.50,
        categoryId: '1',
        payee: 'Test Payee',
        note: 'Test note',
        date: DateTime.now(),
        tag: '1',
      );

      // Assert
      expect(expense.id, '1');
      expect(expense.amount, 25.50);
      expect(expense.categoryId, '1');
      expect(expense.payee, 'Test Payee');
      expect(expense.note, 'Test note');
      expect(expense.tag, '1');
    });

    test('should create category correctly', () {
      // Arrange
      final category = ExpenseCategory(
        id: '1',
        name: 'Food',
        isDefault: true,
      );

      // Assert
      expect(category.id, '1');
      expect(category.name, 'Food');
      expect(category.isDefault, true);
    });

    test('should create tag correctly', () {
      // Arrange
      final tag = Tag(
        id: '1',
        name: 'Breakfast',
      );

      // Assert
      expect(tag.id, '1');
      expect(tag.name, 'Breakfast');
    });
  });
}
