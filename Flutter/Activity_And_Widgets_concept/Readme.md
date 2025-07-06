

## 📌 **Activity Concept:**

### 🔹 কী?

**Activity** হচ্ছে Android অ্যাপ্লিকেশনের একটি স্ক্রিন বা UI (User Interface)। প্রতিটি স্ক্রিন = একটি Activity।

### 🔹 বৈশিষ্ট্য:

* Activity অ্যাপের UI তৈরি করে।
* এটি user interaction পরিচালনা করে।
* Activity lifecycle অনুযায়ী কাজ করে (e.g., onCreate, onStart, onResume ইত্যাদি)।

### 🔹 প্রধান Lifecycle Methods:

1. `onCreate()` – Activity তৈরি হলে প্রথমে একবার কল হয়।
2. `onStart()` – Activity স্ক্রিনে দেখানোর ঠিক আগে।
3. `onResume()` – User-এর সাথে interaction শুরু হয়।
4. `onPause()` – অন্য অ্যাকটিভিটি চালু হলে।
5. `onStop()` – Activity background এ চলে গেলে।
6. `onDestroy()` – Activity destroy হওয়ার সময়।

### 🔹 কখন ব্যবহার করবেন:

* যখন অ্যাপের একটি নতুন স্ক্রিন তৈরি করতে চান।
* যেমন: Login Screen, Home Screen, Settings Page ইত্যাদি।

---

## 📌 **Widgets Concept:**

### 🔹 কী?

**Widgets** হলো অ্যাপ UI-র বিভিন্ন ভিজ্যুয়াল উপাদান যেগুলো ইউজার ইন্টারফেসে কাজ করে।

### 🔹 সাধারণ Widget গুলো:

| Widget        | Description                               |
| ------------- | ----------------------------------------- |
| `TextView`    | টেক্সট দেখানোর জন্য                       |
| `EditText`    | ইউজার ইনপুট নেওয়ার জন্য                   |
| `Button`      | ক্লিক করার বাটন                           |
| `ImageView`   | ছবি দেখানোর জন্য                          |
| `CheckBox`    | চেক করার জন্য                             |
| `RadioButton` | একাধিক অপশনের মধ্যে একটি বেছে নেওয়ার জন্য |
| `ListView`    | লিস্ট আকারে আইটেম দেখানোর জন্য            |
| `Spinner`     | Dropdown লিস্ট                            |

### 🔹 কখন ব্যবহার করবেন:

* যখন UI তৈরি করতে চান।
* ইউজার থেকে ইনপুট নিতে বা তথ্য দেখাতে।

---

