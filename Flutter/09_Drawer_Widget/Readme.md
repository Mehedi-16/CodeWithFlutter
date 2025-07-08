

### 🔹 Drawer Widget Note:

```dart
drawer: Drawer(
```

🔸 `drawer:` হলো Scaffold এর একটি প্রপার্টি, যা অ্যাপের ডান বা বাম পাশে থেকে স্লাইড করে একটি নেভিগেশন মেনু দেখাতে ব্যবহৃত হয়।
🔸 এটি সাধারণত বড় অ্যাপগুলোর জন্য ব্যবহৃত হয় যেখানে অনেকগুলো স্ক্রিন বা ফিচার থাকে।

---

```dart
child: ListView(
```

🔸 Drawer-এর ভিতরের কনটেন্ট স্ক্রল করার জন্য `ListView` ব্যবহার করা হয়েছে।
🔸 এটা Drawer-এর ভিতরের সব এলিমেন্টকে Scrollable করে।

---

```dart
children: [
```

🔸 এখানে আমরা Drawer-এর ভিতরে একাধিক UI এলিমেন্ট দিতে পারি, তাই `children` ব্যবহার করে লিস্ট আকারে এলিমেন্ট যোগ করা হয়েছে।

---

### 🔸 DrawerHeader:

```dart
DrawerHeader(
    child: Text("Mehedi")),
```

🔸 DrawerHeader হলো Drawer-এর ওপরে একটি নির্দিষ্ট অংশ যেখানে সাধারণত ইউজারের নাম, প্রোফাইল ছবি, বা অ্যাপ নাম থাকে।
🔸 এখানে "Mehedi" লেখা আছে শুধু `Text` আকারে।

---

### 🔸 Drawer List Items:

```dart
ListTile(title: Text (" home")),
```

🔸 `ListTile` ব্যবহার করে Drawer-এর মেনু অপশনগুলো তৈরি করা হয়েছে।
🔸 এটা একটি সাধারণ আইটেম যেখানে টেক্সট, আইকন, অথবা অন-ট্যাপ ইভেন্ট যুক্ত করা যায়।

---

```dart
ListTile(title: Text (" Contact")),
ListTile(title: Text (" Email")),
ListTile(title: Text (" Setting")),
```

🔸 প্রতিটি `ListTile` Drawer এর ভিতরে আলাদা আলাদা অপশন দেখানোর জন্য ব্যবহৃত হয়েছে।

---

### ✅ Summary (সারাংশ):

| উপাদান         | উদ্দেশ্য                                    |
| -------------- | ------------------------------------------- |
| `drawer:`      | Drawer widget কে Scaffold-এ সংযুক্ত করে     |
| `Drawer`       | Drawer UI তৈরি করে যা স্লাইড করে ওপেন হয়   |
| `ListView`     | Drawer-এর ভিতরের কনটেন্ট স্ক্রলযোগ্য করে    |
| `DrawerHeader` | Drawer-এর উপরের অংশে টাইটেল/ইউজার তথ্য রাখে |
| `ListTile`     | Drawer মেনু অপশন হিসেবে কাজ করে             |

---

### 💡 Extra Tips:

🔹 প্রতিটি `ListTile`-এ `onTap:` ব্যবহার করে আপনি নেভিগেশন বা অন্য ফাংশন দিতে পারেন।
🔹 আপনি `leading:` প্রপার্টি ব্যবহার করে প্রতিটি টাইলের বামে আইকন দিতে পারেন। যেমন:

```dart
ListTile(
  leading: Icon(Icons.home),
  title: Text("Home"),
  onTap: () {
    // Navigation code here
  },
),
```

---
