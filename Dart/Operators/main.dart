## Arithmetic Operator

```
void main() {
  int a = 10;
  int b = 5;
  int res = a ~/ b;
  print("The sum of $a and $b is $res");
}
```

**Output:**

```
The sum of 10 and 5 is 2
```

---

## Type Test Operator

```
void main() {
  String colour = "blue";
  var result = colour is String;
  print(result);
}
```

**Output:**

```
true
```

---

## Ternary Operator

```
void main() {
  String colour = "blue";
  var result = colour == "red" ? "The colour is red" : "The colour is not red";
  print(result);
}
```

**Output:**

```
The colour is not red
```

---

## Null-aware Operator

```
void main() {
  String? colour;
  var result = colour ?? "The colour is not defined";
  print(result);
}
```

**Output:**

```
The colour is not defined
```

---

