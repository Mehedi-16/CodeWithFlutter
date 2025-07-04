
# Dart Operators with Example & Output

---

### ✅ 1. Arithmetic Operators (গাণিতিক অপারেটর)

| Operator | Description  | Example  |
| -------- | ------------ | -------- |
| `+`      | যোগ          | `a + b`  |
| `-`      | বিয়োগ        | `a - b`  |
| `*`      | গুণ          | `a * b`  |
| `/`      | ভাগ (double) | `a / b`  |
| `~/`     | ভাগ (int)    | `a ~/ b` |
| `%`      | ভাগশেষ       | `a % b`  |

```dart
void main() {
  int a = 10, b = 3;
  print('a + b = ${a + b}');   // 13
  print('a - b = ${a - b}');   // 7
  print('a * b = ${a * b}');   // 30
  print('a / b = ${a / b}');   // 3.3333333333333335
  print('a ~/ b = ${a ~/ b}'); // 3
  print('a % b = ${a % b}');   // 1
}
```

---

### ✅ 2. Relational / Comparison Operators (তুলনামূলক অপারেটর)

| Operator | Description | Example  |
| -------- | ----------- | -------- |
| `==`     | সমান কি না  | `a == b` |
| `!=`     | সমান না কি  | `a != b` |
| `>`      | বড় কি না    | `a > b`  |
| `<`      | ছোট কি না   | `a < b`  |
| `>=`     | বড় বা সমান  | `a >= b` |
| `<=`     | ছোট বা সমান | `a <= b` |

```dart
void main() {
  int a = 10, b = 5;
  print(a == b);  // false
  print(a != b);  // true
  print(a > b);   // true
  print(a < b);   // false
  print(a >= b);  // true
  print(a <= b);  // false
}
```

---

### ✅ 3. Logical Operators (লজিক্যাল অপারেটর)

| Operator | Description | Example           |   |          |
| -------- | ----------- | ----------------- | - | -------- |
| `&&`     | এবং (AND)   | `a > 5 && b < 10` |   |          |
| `\|\|`   | অথবা (OR)   | \`a > 5           |   | b < 10\` |
| `!`      | নয় (NOT)    | `!isTrue`         |   |          |

```dart
void main() {
  bool x = true, y = false;
  print(x && y);   // false
  print(x || y);   // true
  print(!x);       // false
}
```

---

### ✅ 4. Assignment Operators (অ্যাসাইনমেন্ট অপারেটর)

| Operator | Description        | Example  |
| -------- | ------------------ | -------- |
| `=`      | মান নির্ধারণ       | `a = 10` |
| `+=`     | যোগ করে নির্ধারণ   | `a += 2` |
| `-=`     | বিয়োগ করে নির্ধারণ | `a -= 2` |
| `*=`     | গুণ করে নির্ধারণ   | `a *= 2` |
| `/=`     | ভাগ করে নির্ধারণ   | `a /= 2` |

```dart
void main() {
  int a = 10;
  a += 5;   // a = 15
  print(a);
  a -= 3;   // a = 12
  print(a);
  a *= 2;   // a = 24
  print(a);
  a ~/= 4;  // a = 6 (integer division)
  print(a);
}
```

---

### ✅ 5. Type Test Operators (টাইপ যাচাই)

| Operator | Description         | Example       |
| -------- | ------------------- | ------------- |
| `is`     | নির্দিষ্ট টাইপ কিনা | `a is String` |
| `is!`    | নির্দিষ্ট টাইপ না   | `a is! int`   |

```dart
void main() {
  var a = 'Hello';
  print(a is String);  // true
  print(a is int);     // false
  print(a is! int);    // true
}
```

---

### ✅ 6. Null-aware Operators (নাল-সচেতন অপারেটর)

| Operator | Description                        | Example      |
| -------- | ---------------------------------- | ------------ |
| `??`     | null হলে ডান দিকের মান নাও         | `a ?? 10`    |
| `??=`    | null হলে মান অ্যাসাইন করো          | `a ??= 5`    |
| `?.`     | null হলে কিছু করো না (safe access) | `user?.name` |

```dart
void main() {
  int? a;
  print(a ?? 10);  // 10 (a null হলে)
  
  a ??= 5;        // a যদি null হয়, 5 অ্যাসাইন হবে
  print(a);       // 5
  
  Map<String, String>? user;
  print(user?.length);  // null safe access, error দিবে না
}
```

---

### ✅ 7. Bitwise Operators (বিট অপারেটর)

| Operator | Description | Example  |
| -------- | ----------- | -------- |
| `&`      | Bitwise AND | `a & b`  |
| `\|`     | Bitwise OR  | `a \| b` |
| `^`      | XOR         | `a ^ b`  |
| `~`      | Complement  | `~a`     |
| `<<`     | Left shift  | `a << 2` |
| `>>`     | Right shift | `a >> 2` |

```dart
void main() {
  int a = 5;  // 0101
  int b = 3;  // 0011
  print(a & b);  // 1 (0001)
  print(a | b);  // 7 (0111)
  print(a ^ b);  // 6 (0110)
  print(~a);     // -6 (two's complement)
  print(a << 2); // 20 (0101 << 2 = 10100)
  print(a >> 1); // 2 (0101 >> 1 = 0010)
}
```

---

### ✅ 8. Conditional (Ternary) Operator

```dart
void main() {
  int a = 10, b = 20;
  print(a > b ? "a is greater" : "b is greater");
}
```

**Output:**

```
b is greater
```

---

### ✅ 9. Cascade Operator (`..`) & Null-aware Cascade (`?..`)

```dart
class Person {
  String? name;
  int? age;
  void printInfo() => print('Name: $name, Age: $age');
}

void main() {
  var p = Person()
    ..name = "Hasan"
    ..age = 25
    ..printInfo();
  
  Person? p2;
  p2?..printInfo();  // null-safe, won't call if p2 null
}
```

---

### ✅ 10. Spread Operator (`...`, `...?`) — Lists

```dart
void main() {
  var list1 = [1, 2, 3];
  var list2 = [...list1, 4, 5];
  print(list2); // [1, 2, 3, 4, 5]

  List<int>? nullList;
  var list3 = [...?nullList];
  print(list3); // []
}
```

---

