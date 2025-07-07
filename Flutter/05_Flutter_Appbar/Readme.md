# 📱 Flutter AppBar Customization Example

This Flutter project demonstrates how to customize the `AppBar` in a Flutter application.

## ✨ Features

- Centered title with custom text
- Customized height and background color
- Shadow elevation
- Leading icon (menu icon on the left)
- Action icons (search and more options on the right)
- Rounded bottom corners

---

## ss
<img width="315" alt="Screenshot 2025-07-07 at 7 09 24 AM" src="https://github.com/user-attachments/assets/103bb7a8-49ea-4122-be39-1262d1a559f6" />



## 💻 Code Example

```dart
appBar: AppBar(
  title: Text("Home Screen"), // AppBar title text
  centerTitle: true, // Centers the title
  backgroundColor: Colors.cyan, // Sets background color
  elevation: 4, // Adds shadow effect
  toolbarHeight: 60, // Sets height of the AppBar

  leading: Icon(Icons.menu), // Icon on the left side (menu)

  actions: [ // Icons on the right side
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {}, // Action when search is tapped
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {}, // Action when more_vert is tapped
    ),
  ],

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(20), // Rounded bottom edge
    ),
  ),
),
