
### 📄 **Flutter AppBar with SnackBar – Note**

####  **Goal:**

এখানে আমরা একটি `AppBar` তৈরি করেছি যেটার মধ্যে চারটি `IconButton` আছে (Messenger, Call, Email, Notification)। প্রত্যেকটা বাটনে চাপ দিলে নিচে একটা `SnackBar` দেখায় যেটা ইউজারকে মেসেজ দেয়।

---

### 🔧 **Code Breakdown & Explanation:**

```dart
MySnackBar(message, context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}
```

🔹 **কেন করলাম:**
এই ফাংশনটা বারবার SnackBar দেখানোর জন্য ইউজ করা হয়েছে। এতে বারবার `ScaffoldMessenger.of(context).showSnackBar(...)` না লিখে, শুধু `MySnackBar(...)` লিখলেই হবে।

🔹 **কিভাবে কাজ করে:**
`ScaffoldMessenger` ব্যবহার করে `SnackBar` দেখানো হয়, যেটা নিচে ছোট নোটিফিকেশন হিসেবে ইউজারকে মেসেজ দেয়।

---

```dart
appBar: AppBar(
  title: Text("Home Screen"),
  titleSpacing: 0,               // Title-এর সামনে স্পেস কমানো হয়েছে
  toolbarHeight: 60,             // AppBar-এর উচ্চতা নির্ধারণ করা হয়েছে
  toolbarOpacity: 1,             // AppBar পুরোপুরি দৃশ্যমান
  elevation: 0,                  // AppBar-এর ছায়া (shadow) তুলে দেওয়া হয়েছে
  backgroundColor: Colors.cyan,  // Cyan রঙ ব্যাকগ্রাউন্ডে
```

🔹 **AppBar setup:**
এগুলো AppBar-এর স্টাইল এবং দেখার উপযোগিতা বাড়ানোর জন্য।

---

```dart
actions: [
  IconButton(
    onPressed: () {
      MySnackBar("I am Messenger", context);
    },
    icon: Icon(Icons.message),
  ),
```

🔹 **IconButton ব্যবহার:**
প্রতিটি `IconButton` চাপলে নির্দিষ্ট মেসেজ সহ একটি `SnackBar` দেখায়।

🔹 **কি কি বাটন আছেঃ**

* 📩 Messenger
* 📞 Call
* 📧 Email
* 🔔 Notifications

---

```dart
body: const Center(
  child: Text("Welcome to HomeActivity!"),
),
```

🔹 **Body content:**
স্ক্রিনের মাঝে একটা Text আছে, যেটা ইউজারকে স্বাগত জানায়।

---

