

# 📌 **FloatingActionButton in Flutter**

**🔹 Widget:** `FloatingActionButton`

**🔹 অবস্থান:** স্ক্রিনের নিচের ডান পাশে ভেসে থাকে।

**🔹 এই কোডে কী হচ্ছে?**

```dart
floatingActionButton: FloatingActionButton(
  elevation: 10,
  backgroundColor: Colors.cyan,
  child: Icon(Icons.add),
  onPressed: () {
    MySnackBar("I'm FloatingAction", context);
  },
),
```

**🔹 ব্যাখ্যা:**

| উপাদান                         | কাজ                                                                                                      |
| ------------------------------ | -------------------------------------------------------------------------------------------------------- |
| `elevation: 10`                | বাটনের ছায়া কতটা গভীর হবে তা নির্ধারণ করে (উঁচু দেখায়)।                                                  |
| `backgroundColor: Colors.cyan` | বাটনের ব্যাকগ্রাউন্ডের রঙ নির্ধারণ করে।                                                                  |
| `child: Icon(Icons.add)`       | বাটনের ভিতরে `+` আইকন দেখায়।                                                                             |
| `onPressed`                    | বাটনে চাপ দিলে `MySnackBar("I'm FloatingAction", context);` ফাংশনটি কল হয়, যেটি স্ক্রিনে snackbar দেখায়। |

---

**FloatingActionButton দিয়ে কী কী করা যায়:**

| উদ্দেশ্য              | উদাহরণ                                 |
| --------------------- | -------------------------------------- |
| ➕ নতুন item যোগ করা   | To-do অ্যাপে নতুন Task add করা         |
| ✏️ কোনো ডেটা Edit করা | ফর্ম Edit করার স্ক্রিনে যাওয়া         |
| 📷 ক্যামেরা ওপেন করা  | ফটো তোলার জন্য ক্যামেরা চালু করা       |
| 📩 মেসেজ/ইমেইল পাঠানো | Chat বা Email app থেকে নতুন মেসেজ তৈরি |
| 🔊 Voice Note রেকর্ড  | Note-taking অ্যাপে Voice রেকর্ড করা    |
| 🎨 UI Theme পরিবর্তন  | Light/Dark mode switch করা             |
| 🧭 Navigate করা       | অন্য পেজে যাওয়া (Navigator.push...)   |
| 🧪 টেস্ট/ডেমো action  | SnackBar/Dialog দেখানো test purposes-এ |

---

**💡 Tip:**
FAB সাধারণত এমন কাজের জন্য ব্যবহৃত হয় যেটি একটি গুরুত্বপূর্ণ primary action — যেমন নতুন item যোগ করা।

