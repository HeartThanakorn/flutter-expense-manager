# Flutter Expense Manager 💰

A comprehensive Flutter application for tracking personal expenses with categories, tags, and local data persistence.

## 📱 Features

- ✅ **Add, Edit & Delete Expenses** - Record your daily expenses with detailed information
- 🏷️ **Category Management** - Organize expenses by custom categories (Food, Transport, Entertainment, etc.)
- 🔖 **Tag System** - Add descriptive tags for better expense organization
- 📊 **Expense Views** - View expenses grouped by date or category
- 💾 **Local Storage** - All data persists locally using device storage
- 🎨 **Modern UI** - Clean, intuitive Material Design interface
- 📱 **Cross-Platform** - Runs on Android, iOS, Web, Windows, macOS, and Linux

## 🚀 Quick Start

### Prerequisites

- Flutter SDK (3.5.2 or higher)
- Dart SDK
- Android Studio / VS Code
- Android/iOS emulator or physical device

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/expense_manager.git
   cd expense_manager
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## 📂 Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/                   # Data models
│   ├── expense.dart         # Expense model with JSON serialization
│   ├── expense_category.dart # Category model
│   └── tag.dart             # Tag model
├── providers/               # State management
│   └── expense_provider.dart # Main provider for app state
├── screens/                 # UI screens
│   ├── home_screen.dart     # Main dashboard with expense lists
│   ├── add_expense_screen.dart # Add/edit expense form
│   ├── category_management_screen.dart # Manage categories
│   └── tag_management_screen.dart # Manage tags
└── widgets/                 # Reusable UI components
    ├── add_category_dialog.dart # Dialog for adding categories
    └── add_tag_dialog.dart     # Dialog for adding tags
```

## 🛠️ Built With

- **[Flutter](https://flutter.dev/)** - UI framework
- **[Provider](https://pub.dev/packages/provider)** - State management
- **[LocalStorage](https://pub.dev/packages/localstorage)** - Data persistence
- **[Intl](https://pub.dev/packages/intl)** - Date formatting
- **[Collection](https://pub.dev/packages/collection)** - Data grouping utilities

## 📸 Screenshots

### Home Screen - By Date View

The main dashboard showing all expenses organized by date with swipe-to-delete functionality.

### Home Screen - By Category View

Expenses grouped by categories with totals for each category.

### Add Expense Screen

Comprehensive form for adding new expenses with category and tag selection.

### Category Management

Screen for managing expense categories with add/delete functionality.

## 🏗️ Architecture

This app follows Flutter best practices with:

- **Provider Pattern** for state management
- **Separation of Concerns** with dedicated folders for models, screens, and widgets
- **Local Data Persistence** using LocalStorage
- **Responsive Design** that works across different screen sizes

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test file
flutter test test/providers/expense_provider_test.dart
```

## 🚀 Building for Production

### Android

```bash
flutter build apk --release
# or for app bundle
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

### Desktop (Windows/macOS/Linux)

```bash
flutter build windows --release
flutter build macos --release
flutter build linux --release
```

## 📋 Roadmap

- [ ] Add expense search and filtering
- [ ] Implement data export (CSV/PDF)
- [ ] Add expense analytics and charts
- [ ] Implement recurring expenses
- [ ] Add budget management
- [ ] Cloud synchronization
- [ ] Multi-currency support
- [ ] Receipt photo attachment

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🐛 Known Issues

- Categories and tags are not persisted to local storage (planned fix)
- No confirmation dialogs for delete operations (enhancement planned)
- Limited form validation in some screens (improvement planned)

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/yourusername/expense_manager/issues) page
2. Create a new issue with detailed description
3. For general questions, use the [Discussions](https://github.com/yourusername/expense_manager/discussions) tab

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for UI inspiration
- Open source community for the excellent packages used

---

**Made with ❤️ using Flutter**
