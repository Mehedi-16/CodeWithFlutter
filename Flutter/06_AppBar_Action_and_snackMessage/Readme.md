

### 🔹 `MySnackBar(message, context)`

```dart
MySnackBar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
  );
}
```

🔸 **কেন করলাম**:

* বারবার একই `SnackBar` কোড না লিখে একটা **reusable function** বানানো হয়েছে।

🔸 **কিসের জন্য করলাম**:

* যেকোনো জায়গা থেকে শুধুমাত্র `MySnackBar("Text", context);` কল করলেই একটা **notification message** (SnackBar) দেখাবে।
* কোড **short ও clean** রাখার জন্য।

---

### 🔹 `AppBar(...)`

```dart
appBar: AppBar(
  title:  Text("Home Screen"),
  titleSpacing: 0,
  toolbarHeight: 60,
  toolbarOpacity: 1,
  elevation: 0,
  backgroundColor: Colors.cyan,
  actions: [
    ...
  ],
),
```

🔸 **কেন করলাম**:

* `AppBar` ব্যবহার করে অ্যাপের উপরের অংশে একটা **header**/title বানানো হয়েছে।

🔸 **কিসের জন্য করলাম**:

* User যেন বুঝতে পারে এখন কোন স্ক্রিনে আছে ("Home Screen")।
* Visual customization (height, color, elevation) দিয়ে **UI সুন্দর** ও পছন্দমতো করা হয়েছে।

---

### 🔹 `actions: [IconButton(...)]`

```dart
actions: [
  IconButton(onPressed: (){MySnackBar("I am Messenger", context);}, icon: Icon(Icons.message)),
  IconButton(onPressed: (){MySnackBar("I am call", context);}, icon: Icon(Icons.call)),
  IconButton(onPressed: (){MySnackBar("I am email", context);}, icon: Icon(Icons.email)),
  IconButton(onPressed: (){MySnackBar("I am notifications", context);}, icon: Icon(Icons.notifications)),
],
```

🔸 **কেন করলাম**:

* User interaction বাড়ানোর জন্য `IconButton` ব্যবহার করা হয়েছে।

🔸 **কিসের জন্য করলাম**:

* প্রতিটি আইকনে ট্যাপ করলে একটা **মেসেজ (SnackBar)** দেখাবে, যেমনঃ “I am Messenger”, “I am call” ইত্যাদি।
* এটা user কে জানায়, সে কি press করলো।

---

### 🔹 `body: Center(...)`

```dart
body: const Center(child: Text("Welcome to HomeActivity!")),
```

🔸 **কেন করলাম**:

* স্ক্রিনের মাঝখানে একটা **message/text** দেখানোর জন্য `Center` widget ব্যবহার করা হয়েছে।

🔸 **কিসের জন্য করলাম**:

* Simple Welcome Text, যাতে বুঝা যায় এটা **HomeActivity screen**।

---

## ✅ Summary

| অংশ            | কেন করলাম           | কিসের জন্য করলাম                        |
| -------------- | ------------------- | --------------------------------------- |
| `MySnackBar()` | Reusable function   | একই SnackBar বারবার না লিখে             |
| `AppBar`       | Title ও UI styling  | স্ক্রিনের হেডার দেখানোর জন্য            |
| `IconButton`   | Interaction বাড়াতে  | প্রতিটা আইকনে press করলে message দেখাতে |
| `Center(body)` | Layout সুন্দর রাখতে | স্ক্রিনের মাঝে Welcome Text দেখাতে      |

---

