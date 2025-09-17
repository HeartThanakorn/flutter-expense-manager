import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/models/tag.dart';

void main() {
  group('Tag Model Tests', () {
    test('should create tag with required fields', () {
      // Act
      final tag = Tag(
        id: '1',
        name: 'Breakfast',
      );

      // Assert
      expect(tag.id, '1');
      expect(tag.name, 'Breakfast');
    });

    test('should handle empty name', () {
      // Act
      final tag = Tag(
        id: '1',
        name: '',
      );

      // Assert
      expect(tag.id, '1');
      expect(tag.name, '');
    });

    test('should handle special characters in name', () {
      // Act
      final tag = Tag(
        id: '1',
        name: 'Café & Restaurant',
      );

      // Assert
      expect(tag.id, '1');
      expect(tag.name, 'Café & Restaurant');
    });
  });
}
