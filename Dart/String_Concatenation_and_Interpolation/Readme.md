

### 📌 1. **String Concatenation (যোগ)**

**Concatenation** মানে হলো একাধিক string-কে `+` চিহ্ন ব্যবহার করে একত্র করা।

#### ✅ Syntax:

```
String name = "Mehedi";
String message = "Hello " + name + "!";
print(message);  // Output: Hello Mehedi!
```

> 🔹 `+` চিহ্ন দিয়ে একাধিক স্ট্রিং জোড়া দেওয়া যায়।

---

### 📌 2. **String Interpolation (প্রক্ষেপণ)**

**Interpolation** এর মাধ্যমে ভেরিয়েবল বা expression সরাসরি স্ট্রিং এর মধ্যে বসানো যায় `${}` বা `$` ব্যবহার করে।

#### ✅ Syntax:

```
String name = "Mehedi";
String message = "Hello $name!";
print(message);  // Output: Hello Mehedi!
```

#### 🔹 Expression সহ:

```
int a = 10, b = 5;
print("Sum is ${a + b}");  // Output: Sum is 15
```

> 🔹 `${}` ব্যবহার করলে expression বা calculation ও করা যায়।
> 🔹 `$variableName` শুধু ভেরিয়েবল থাকলে ব্যবহৃত হয়।

---

### ✅ Comparison:

| Feature          | Concatenation           | Interpolation                         |
| ---------------- | ----------------------- | ------------------------------------- |
| Syntax           | `"Hello " + name + "!"` | `"Hello $name!"` or `"Sum: ${a + b}"` |
| Code readability | কম                      | বেশি                                  |
| Performance      | একটু ধীর                | তুলনামূলক দ্রুত                       |

---

### ✅ Extra Example:

```dart
void main() {
  String firstName = "Hasan";
  String lastName = "Mamun";

  // Concatenation
  print("Name: " + firstName + " " + lastName);

  // Interpolation
  print("Name: $firstName $lastName");
}
```

---

