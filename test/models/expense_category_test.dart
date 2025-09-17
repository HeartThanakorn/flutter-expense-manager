import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/models/expense_category.dart';

void main() {
  group('ExpenseCategory Model Tests', () {
    test('should create category with required fields', () {
      // Act
      final category = ExpenseCategory(
        id: '1',
        name: 'Food',
      );

      // Assert
      expect(category.id, '1');
      expect(category.name, 'Food');
      expect(category.isDefault, false); // Default value
    });

    test('should create default category', () {
      // Act
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

    test('should handle empty name', () {
      // Act
      final category = ExpenseCategory(
        id: '1',
        name: '',
      );

      // Assert
      expect(category.id, '1');
      expect(category.name, '');
      expect(category.isDefault, false);
    });
  });
}
