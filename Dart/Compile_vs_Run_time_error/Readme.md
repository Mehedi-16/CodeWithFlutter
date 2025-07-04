

##  Compile-time Error vs Run-time Error (নোট)

| 🔍 বিষয়       | 🛠️ Compile-time Error                                               | 🚀 Run-time Error                                                                  |
| ------------- | -------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| 📅 সময়        | প্রোগ্রাম কম্পাইল করার সময়                                           | প্রোগ্রাম চালানোর সময়                                                              |
| 📌 সনাক্ত করে | Compiler                                                             | Program Execution চলাকালীন                                                         |
| ⚠️ কারণ       | Syntax ভুল, টাইপ ভুল, undeclared variable, missing semicolon ইত্যাদি | Division by zero, file not found, null reference, array index out of bound ইত্যাদি |
| 🔧 সমাধান     | Code ঠিক করে কম্পাইল করতে হয়                                         | Exception handling (`try-catch`) বা logic ঠিক করে                                  |
| 💡 উদাহরণ     | `int x = "text";` ❌ (type mismatch)                                  | `int x = 10/0;` ❌ (division by zero)                                               |

---

### 📘 1. What is **Compile-time Error**?

যখন কোড লেখার পরে কম্পাইল করলে error দেয়, কিন্তু রান করা যায় না — তখন তাকে compile-time error বলে।

#### ✅ উদাহরণ:

```dart
void main() {
  int x = "text"; // ❌ Compile-time error: type mismatch
}
```

🧠 **কারণ:** এখানে `int` টাইপের ভেরিয়েবলে `String` দেওয়া হয়েছে।

---

### 📘 2. What is **Run-time Error**?

যখন কোড সঠিকভাবে কম্পাইল হয়, কিন্তু প্রোগ্রাম চালানোর সময় কোন ভুলের জন্য error আসে, তখন তাকে run-time error বলে।

#### ✅ উদাহরণ:

```dart
void main() {
  int a = 10;
  int b = 0;
  print(a ~/ b); // ❌ Run-time error: Division by zero
}
```

🧠 **কারণ:** শূন্য দিয়ে ভাগ করা যায় না, তাই রান টাইমে crash করবে।

---

### ✅ Extra Example in Dart:

```dart
void main() {
  // Compile-time Error Example
  // String name = 10;  // ❌ Compile-time: type error

  // Run-time Error Example
  List<int> nums = [1, 2, 3];
  print(nums[5]); // ❌ Run-time: index out of range
}
```

---

