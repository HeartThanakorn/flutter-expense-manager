import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/models/expense.dart';

void main() {
  group('Expense Model Tests', () {
    test('should create expense with all required fields', () {
      // Arrange
      final testDate = DateTime(2024, 1, 15);

      // Act
      final expense = Expense(
        id: '1',
        amount: 25.50,
        categoryId: 'cat1',
        payee: 'Test Payee',
        note: 'Test note',
        date: testDate,
        tag: 'tag1',
      );

      // Assert
      expect(expense.id, '1');
      expect(expense.amount, 25.50);
      expect(expense.categoryId, 'cat1');
      expect(expense.payee, 'Test Payee');
      expect(expense.note, 'Test note');
      expect(expense.date, testDate);
      expect(expense.tag, 'tag1');
    });

    test('should convert to JSON correctly', () {
      // Arrange
      final testDate = DateTime(2024, 1, 15);
      final expense = Expense(
        id: '1',
        amount: 25.50,
        categoryId: 'cat1',
        payee: 'Test Payee',
        note: 'Test note',
        date: testDate,
        tag: 'tag1',
      );

      // Act
      final json = expense.toJson();

      // Assert
      expect(json['id'], '1');
      expect(json['amount'], 25.50);
      expect(json['categoryId'], 'cat1');
      expect(json['payee'], 'Test Payee');
      expect(json['note'], 'Test note');
      expect(json['date'], testDate.toIso8601String());
      expect(json['tag'], 'tag1');
    });

    test('should create from JSON correctly', () {
      // Arrange
      final testDate = DateTime(2024, 1, 15);
      final json = {
        'id': '1',
        'amount': 25.50,
        'categoryId': 'cat1',
        'payee': 'Test Payee',
        'note': 'Test note',
        'date': testDate.toIso8601String(),
        'tag': 'tag1',
      };

      // Act
      final expense = Expense.fromJson(json);

      // Assert
      expect(expense.id, '1');
      expect(expense.amount, 25.50);
      expect(expense.categoryId, 'cat1');
      expect(expense.payee, 'Test Payee');
      expect(expense.note, 'Test note');
      expect(expense.date, testDate);
      expect(expense.tag, 'tag1');
    });
  });
}
