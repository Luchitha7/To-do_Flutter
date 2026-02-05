# 📝 To-Do Flutter App

A beautiful, modern, and feature-rich To-Do application built with Flutter. Stay organized and boost your productivity with this intuitive task management app.

![Flutter](https://img.shields.io/badge/Flutter-3.10.4-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.10.8-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## ✨ Features

- 🎯 **Create Tasks** - Add new tasks quickly with a beautiful dialog interface
- ✅ **Mark Complete** - Toggle task completion with checkboxes
- 🗑️ **Swipe to Delete** - Intuitive swipe gesture to remove tasks (right-to-left)
- 💾 **Local Persistence** - All tasks are saved locally using Hive database
- 🎨 **Modern UI** - Clean, blue-themed interface with smooth animations
- 🚀 **Landing Page** - Beautiful animated splash screen with app logo
- 📱 **Cross-Platform** - Works on iOS, Android, Web, macOS, Linux, and Windows
- ⚡ **Fast Performance** - Lightweight and optimized for smooth user experience

## 📸 App Preview

### Landing Page
- Animated logo with fade-in and scale effects
- Auto-navigation to home page after 3 seconds
- Tap anywhere to skip and go directly to tasks

### Home Page
- Clean list view of all your tasks
- Blue-themed UI matching your brand
- Floating action button for quick task creation
- Swipe right-to-left to reveal delete option with red background

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (3.10.4 or higher)
  - Check installation: `flutter --version`
  - [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (comes with Flutter)
- **iOS Simulator** (for iOS development) or **Android Emulator** (for Android development)
- **Xcode** (for iOS development on macOS)
- **Android Studio** (for Android development)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Luchitha7/To-do_Flutter.git
   cd To-do_Flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```
   
   Or specify a device:
   ```bash
   flutter run -d <device-id>
   ```

4. **Build for production**
   ```bash
   # Android
   flutter build apk --release
   
   # iOS
   flutter build ios --release
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point, Hive initialization
├── data/
│   └── database.dart         # Hive database operations (CRUD)
├── pages/
│   ├── landing_page.dart     # Animated splash/landing screen
│   └── home_page.dart        # Main page with task list
└── util/
    ├── todo_tile.dart        # Individual task item widget
    ├── dialog_box.dart       # Add new task dialog
    └── my_button.dart        # Custom button component

assets/
└── images/
    └── logo.png              # App logo
```

## 🛠️ Technologies Used

- **Flutter** - Cross-platform UI framework
- **Dart** - Programming language
- **Hive** - Fast, lightweight NoSQL database for local storage
- **Material Design** - UI components and design system

## 💡 Usage Guide

### Adding a Task
1. Tap the **"Add task"** floating action button
2. Enter your task in the dialog
3. Tap **"Save"** or press Enter
4. Your task appears in the list immediately

### Completing a Task
- Tap the checkbox next to any task
- Completed tasks show a strikethrough effect
- Task state is automatically saved

### Deleting a Task
- Swipe a task from **right to left**
- A red background with trash icon appears
- Release to delete the task
- Task is permanently removed and saved

### Data Persistence
- All tasks are automatically saved to local storage
- Tasks persist between app sessions
- No internet connection required

## 🔧 Configuration

### Changing App Colors
Edit the color values in:
- `lib/pages/home_page.dart` - Main background and app bar colors
- `lib/pages/landing_page.dart` - Landing page background
- `lib/util/dialog_box.dart` - Dialog styling

### Modifying Landing Page Duration
In `lib/pages/landing_page.dart`, change the delay:
```dart
Future.delayed(const Duration(seconds: 3), () { // Change 3 to your desired seconds
```

## 🐛 Troubleshooting

### Common Issues

**Issue: "Target native_assets required define SdkRoot"**
- This is a known Flutter tooling warning on iOS
- The app should still run correctly
- Try: `flutter clean && flutter pub get`

**Issue: Assets not loading**
- Ensure `pubspec.yaml` includes:
  ```yaml
  flutter:
    assets:
      - assets/images/
  ```
- Run `flutter pub get` after adding assets

**Issue: Hive box errors**
- Ensure Hive is initialized in `main.dart` before `runApp()`
- Check that `await Hive.initFlutter()` is called

## 🚧 Future Enhancements

- [ ] Cloud sync (Firebase/Supabase integration)
- [ ] Task categories and tags
- [ ] Due dates and reminders
- [ ] Task priority levels
- [ ] Dark mode support
- [ ] Search functionality
- [ ] Task sorting options
- [ ] Export/Import tasks
- [ ] Multi-language support

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

**Luchitha Jayawardena**

- GitHub: [@Luchitha7](https://github.com/Luchitha7)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Hive package developers for the lightweight database solution
- Material Design for the UI guidelines

---
