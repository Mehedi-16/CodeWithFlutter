# Data Types

---

### 🔹 int

* পূর্ণসংখ্যা রাখে (যেমন: 1, 100, -5)  
* দশমিক নেই ❌  

**Example:**

```dart
void main() {
  int age = 25;
  print(age);
}
````

**Output:**

```
25
```

---

### 🔹 double

* দশমিকসহ সংখ্যা রাখে ✅

**Example:**

```dart
void main() {
  double price = 99.99;
  print(price);
}
```

**Output:**

```
99.99
```

---

### 🔹 String

* টেক্সট বা অক্ষর রাখে
* " " বা ' ' এর মধ্যে লিখতে হয় ✅

**Example:**

```dart
void main() {
  String name = "Hasan";
  print(name);
}
```
**Output:**

```
Hasan
```

---

### 🔹 bool

* শুধু দুইটা মান নেয়: `true` অথবা `false` ✅

**Example:**

```dart
void main() {
  bool isLoggedIn = true;
  print(isLoggedIn);
}
```

**Output:**

```
true
```

---

### 🔹 List

* Ordered collection
* Index থাকে ✅
* Duplicate value থাকতে পারে ✅

**Example:**

```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Apple"];
  print(fruits[0]);
  print(fruits);
}
```

**Output:**

```
Apple
[Apple, Banana, Apple]
```

---

### 🔹 Set

* Unordered collection
* Duplicate value রাখা যায় না ❌
* Index নেই ❌

**Example:**

```dart
void main() {
  Set<String> countries = {"Bangladesh", "India", "Bangladesh"};
  print(countries);
}
```


**Output:**

```
{Bangladesh, India}
```

---

### 🔹 Map

* Key-value pair-এ ডেটা রাখে ✅
* Key **unique** হতে হয় ✅
* Value **duplicate** হতে পারে ✅
* Index নেই ❌, বরং key দিয়ে access হয় ✅

**Example:**

```dart
void main() {
  Map<String, String> capital = {
    "Bangladesh": "Dhaka",
    "India": "New Delhi",
    "USA": "Washington D.C."
  };
  print(capital["India"]);
  print(capital);
}
```

**Output:**

```
New Delhi
{Bangladesh: Dhaka, India: New Delhi, USA: Washington D.C.}
```

```dart
void main() {
  Map<String, dynamic > myMap = {
    "Name": "Mehedi",
    "age": 23,
    "Dist": "Kurigram"
  };
  print(myMap["Name"]);
}

```
**Output:**

```
Mehedi
```

---

### 🔹 Rune

* Unicode code point কে Dart এ represent করে ✅
* সাধারণত একটি character এর Unicode integer value

**Example:**

```dart
void main() {
  var heart = '\u2665'; // Unicode for heart symbol
  print(heart);
}
```


**Output:**

```
♥
```

---

### 🔹 Runes

* Multiple Unicode code points এর collection
* Strings এর বিভিন্ন Unicode character access করতে সাহায্য করে

**Example:**

```dart
void main() {
  String clapping = '👏🏽';
  print(clapping.runes.toList());
}
```



**Output:**

```
[128079, 127997]
```

---

### 🔹 Summary Table

| Data Type | Order আছে? | Duplicate Value? | Index আছে?          | Unique Key দরকার? |
| --------- | ---------- | ---------------- | ------------------- | ----------------- |
| int       | ✅          | -                | -                   | -                 |
| double    | ✅          | -                | -                   | -                 |
| String    | ✅          | ✅                | ✅                   | -                 |
| bool      | ✅          | -                | -                   | -                 |
| List      | ✅          | ✅                | ✅                   | -                 |
| Set       | ❌          | ❌                | ❌                   | -                 |
| Map       | ❌          | ✅ (Value)        | ❌ (Key দিয়ে access) | ✅ (Key)           |
| Rune      | ✅          | -                | -                   | -                 |
| Runes     | ✅          | ✅                | ✅                   | -                 |

---
