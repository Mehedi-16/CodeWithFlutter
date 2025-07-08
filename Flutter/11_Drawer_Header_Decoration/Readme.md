# Drawer_Header_Decoration

---

### ✅ `children: [`

Drawer-এর ভিতরে `ListView` এর `children` অংশে উইজেট গুলো যুক্ত করা হচ্ছে।

---

### ✅ `UserAccountsDrawerHeader`

এটি একটি তৈরি করা রেডিমেড হেডার উইজেট যা ইউজারের প্রোফাইলের তথ্য (নাম, ইমেইল, ছবি) দেখাতে ব্যবহৃত হয়। Drawer-এর উপরের অংশে ব্যবহৃত হয়।

---

### ⚙️ ভিতরের অংশগুলো:

#### ✅ `decoration: BoxDecoration(color: Colors.cyan)`

* DrawerHeader এর ব্যাকগ্রাউন্ড রঙ সায়ান করা হয়েছে।

#### ✅ `accountName: Text("Mehedi")`

* ইউজারের নাম দেখানোর জন্য `Text` উইজেট ব্যবহার করা হয়েছে।

#### ✅ `accountEmail: Text("mehedimamun604@gmail.com")`

* ইউজারের ইমেইল দেখানোর জন্য `Text` উইজেট ব্যবহার করা হয়েছে।

#### ✅ `currentAccountPicture: CircleAvatar(...)`

* ইউজারের ছবি গোলাকৃতি আকারে দেখানোর জন্য `CircleAvatar` ব্যবহার করা হয়েছে।

##### 🔗 `backgroundImage: NetworkImage('https://i.imgur.com/QCNbOAo.png')`

* অনলাইনের একটি ইমেজ লিংক ব্যবহার করে ইউজারের প্রোফাইল ছবি লোড করা হয়েছে।

---

### 🔚 এক কথায়:

এই অংশটি Drawer-এর উপরের অংশে ইউজারের নাম, ইমেইল ও ছবি সহ একটি প্রোফাইল হেডার তৈরি করে। এটি অ্যাপের ব্যবহারকারীর তথ্য সুন্দরভাবে উপস্থাপন করে।

---
