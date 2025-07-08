

###  **Flutter Note: BottomNavigationBar Explained**

#### 🔷 **Purpose:**

`BottomNavigationBar` Flutter-এ একটি **navigation component**, যা স্ক্রিনের নিচে থাকে এবং বিভিন্ন পেজ বা স্ক্রিনে যাওয়ার জন্য আইকনসহ অপশন দেয়।

---

### 🧩 **Code Breakdown and Explanation:**

```dart
bottomNavigationBar: BottomNavigationBar(
  currentIndex: 0,
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ],
  onTap: (int index) {
    if (index == 0) {
      MySnackBar("I'm Home", context);
    }
    if (index == 1) {
      MySnackBar("I'm Contact", context);
    }
    if (index == 2) {
      MySnackBar("I'm Profile", context);
    }
  },
)
```

---

### 📌 **Key Components Explained:**

| 🔧 Part                                        | 🧠 What It Does                                                     |
| ---------------------------------------------- | ------------------------------------------------------------------- |
| `bottomNavigationBar:`                         | Scaffold widget-এর property যা স্ক্রিনের নিচে Navigation Bar দেয়    |
| `BottomNavigationBar()`                        | এটি একটি Widget যা নিচে নেভিগেশন মেনু তৈরি করে                      |
| `currentIndex: 0`                              | কোন আইটেমটি এখন সিলেক্টেড, এখানে 0 মানে প্রথম আইটেম (Home)          |
| `items:`                                       | BottomNavigationBarItem-এর list, যেখানে প্রতিটি আইকন এবং label থাকে |
| `BottomNavigationBarItem(icon:..., label:...)` | একটি করে নেভিগেশন অপশন বানায় (যেমন Home, Contact, Profile)          |
| `onTap:`                                       | যখন কোন আইটেমে ট্যাপ করা হয়, তখন কি হবে সেটা নির্ধারণ করে           |
| `index`                                        | ট্যাপ করা আইটেমের পজিশন (0,1,2) ধরে কাজ করে                         |
| `MySnackBar()`                                 | Custom Function, যেটা ট্যাপ করলে একটা snackbar মেসেজ দেখায়          |

---

### 🧠 **What Happens When You Tap Each Button:**

| Button  | Index | Output                        |
| ------- | ----- | ----------------------------- |
| Home    | 0     | Shows Snackbar: "I'm Home"    |
| Contact | 1     | Shows Snackbar: "I'm Contact" |
| Profile | 2     | Shows Snackbar: "I'm Profile" |

---

### 💡 **Extra Tips:**

* `currentIndex` Dynamic করলে বুঝা যাবে কোন পেজে আছো (Stateful widget ব্যবহার করে)
* প্রতিটা আইটেমে আলাদা পেজে Navigate করাতে পারো: `Navigator.push(...)` দিয়ে
* `selectedItemColor`, `backgroundColor` ব্যবহার করে সুন্দর ডিজাইন করা যায়
* Animation যোগ করতে `PageView` অথবা `IndexedStack` ব্যবহার করা যায়

---

### 🧪 Example Use-Cases:

* **E-Commerce App**: Home, Categories, Cart, Profile
* **Social Media App**: Feed, Message, Notification, Profile
* **Admin Dashboard**: Users, Reports, Settings

---

### ✅ Summary in Bengali:

* `BottomNavigationBar` দিয়ে তুমি Flutter অ্যাপে নিচে ২-৫টা section তৈরি করতে পারো।
* প্রতিটা বাটনে ট্যাপ করলে আলাদা অ্যাকশন বা স্ক্রিনে যেতে পারো।
* এটি user-friendly এবং মোবাইল অ্যাপে navigation সহজ করে।

---
