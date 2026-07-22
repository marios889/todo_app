# 📝 Minimalist Flutter To-Do App with Hive Local Storage

[![Release](https://img.shields.io/github/v/release/marios889/todo_app?color=blue)](https://github.com/marios889/todo_app/releases/latest)

A lightweight, responsive cross-platform mobile application designed to manage daily tasks efficiently. Built using Flutter and Dart, this project focuses on offline-first data persistence using Hive and modern, interactive UI gestures.

*Inspired by Mitch Koko's Flutter Hive tutorial. Built as part of my ongoing mobile engineering portfolio to master local database CRUD operations and gesture-driven UI components.*

---

## ✨ Key Features & User Experience

- **💾 Persistent Local Storage:** Integrates Hive NoSQL key-value database to save, update, and persist tasks locally across app restarts.
- **📱 Interactive Slidable Actions:** Leverages flutter_slidable to allow quick task deletion by swiping left on any item.
- **✅ Dynamic Task Completion:** Toggle checkbox states with interactive strikethrough text feedback (`TextDecoration.lineThrough`).
- **➕ Custom Task Dialogs:** Modular alert dialogs with clean input controllers to create and append new task nodes seamlessly.
- **🎨 Custom UI Theme:** Flat design aesthetic built with consistent padding matrices, rounded border radii, and contextual themes.

---

## 🏗️ Architecture & Code Structure

The project follows a clean separation between UI components, custom utility widgets, and the local database layer:
```text
lib/
├── data/
│   └── database.dart        # Hive database initialization & CRUD methods
├── pages/
│   └── home_page.dart       # Primary viewport & state updates (initState / setState)
└── util/
    ├── dialog_box.dart      # Reusable modal alert component for task creation
    ├── my_button.dart       # Modular styled buttons
    └── todo_tile.dart       # Slidable list item card wrapped in flutter_slidable
```
---

## 🛠️ Tech Stack & Dependencies

- **Framework:** Flutter & Dart
- **Database:** `hive` & `hive_flutter` (Lightweight key-value storage)
- **UI Components:** `flutter_slidable` (Touch-based slide-to-delete action panes)
- **IDE:** Visual Studio Code

---

## 🚀 Getting Started

### Prerequisites
Make sure you have the Flutter SDK installed on your system.

### Installation
1. Clone the repository:
   ```text
    git clone https://github.com/marios889/todo_app.git
   ```

3. Navigate to the project root:
   ```text
   cd todo-app
   ```

5. Fetch dependencies:
   ```text
   flutter pub get
   ```

7. Run the application:
   ```text
   flutter run
   ```
