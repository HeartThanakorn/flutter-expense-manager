# Test configuration for expense_manager app

# Run all tests

flutter test

# Run tests with coverage

flutter test --coverage

# Run specific test files

flutter test test/models/
flutter test test/providers/
flutter test test/widgets/

# Run integration tests (when available)

flutter test integration_test/

# Generate coverage report (after running with --coverage)

genhtml coverage/lcov.info -o coverage/html
