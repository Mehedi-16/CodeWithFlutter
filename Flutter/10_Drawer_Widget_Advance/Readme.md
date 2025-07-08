# Drawer_Widget_Advance

```dart
drawer: Drawer( // 👉 Scaffold widget এর একটি property, যেটা Drawer তৈরি করে।
  child: ListView( // 👉 Drawer এর ভিতরের content গুলো Scrollable list আকারে দেখায়।

    children: [ // 👉 ListView এর ভিতরে থাকা সব widget এখানে children list এ define করা হয়।
    
      DrawerHeader( // 👉 Drawer এর উপরের অংশে একটি header দেখায়।
        child: Text("Mehedi") // 👉 Header এ "Mehedi" টেক্সট দেখানো হবে।
      ),

      // 👉 প্রথম মেনু আইটেম: Home
      ListTile(
        leading: Icon(Icons.home), // 👉 আইকন হিসেবে বাড়ির চিহ্ন দেখাবে।
        title: Text(" home"), // 👉 টাইটেল হিসেবে "home" লেখা থাকবে।
        onTap: () { // 👉 ক্লিক করলে নিচের কাজ করবে:
          MySnackBar("I'm Home", context); // 👉 একটি Snackbar দেখাবে।
        },
      ),

      // 👉 দ্বিতীয় মেনু আইটেম: Message
      ListTile(
        leading: Icon(Icons.message), // 👉 Message আইকন দেখাবে।
        title: Text(" message"), // 👉 "message" টাইটেল দেখাবে।
        onTap: () {
          MySnackBar("I'm message", context); // 👉 Snackbar তে "I'm message" দেখাবে।
        },
      ),

      // 👉 তৃতীয় মেনু আইটেম: Settings
      ListTile(
        leading: Icon(Icons.settings), // 👉 Settings আইকন দেখাবে।
        title: Text(" Setting"), // 👉 টাইটেল হিসেবে "Setting" লেখা থাকবে।
        onTap: () {
          MySnackBar("I'm settings", context); // 👉 Snackbar তে "I'm settings" দেখাবে।
        },
      ),
    ],
  ),
),
```

---

### 🔎 Drawer কী?

Drawer হলো একধরনের সাইড মেনু যা অ্যাপের বাঁ পাশে স্লাইড করে আসে এবং এতে বিভিন্ন নেভিগেশন অপশন থাকে।

---

### ✨ আরও কী কী যোগ করা যায় Drawer-এ?

| Feature                    | কাজ                                                |
| -------------------------- | -------------------------------------------------- |
| `UserAccountsDrawerHeader` | ইউজারের নাম, ইমেইল, প্রোফাইল পিকচারসহ হেডার দেখাতে |
| `Divider()`                | প্রতিটি অপশন এর মাঝে লাইন দিতে                     |
| `Navigator.push()`         | Drawer থেকে নতুন পেজে যেতে                         |
| `Icons.logout`             | লগআউট অপশন অ্যাড করতে                              |
| Custom widget              | নিজের মতো করে Drawer design করতে                   |

---

