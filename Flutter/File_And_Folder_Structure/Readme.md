
# Flutter Project Folder Structure 

```
my_flutter_app/
│
├── android/                    # Android native code ও কনফিগারেশন
│   ├── app/
│   │   ├── build.gradle        # অ্যাপের জন্য গ্রেডল বিল্ড কনফিগারেশন
│   │   ├── src/
│   │   │   ├── main/
│   │   │   │   ├── java/       # Java/Kotlin সোর্স কোড (অ্যান্ড্রয়েড নেটিভ)
│   │   │   │   ├── res/        # Android রিসোর্স (লেআউট, ইমেজ, স্ট্রিং)
│   │   │   │   ├── AndroidManifest.xml  # অ্যাপের মেটাডাটা (Permissions, Activities)
│   │   │   │
│   │   │   └── test/           # Android নেটিভ টেস্ট কোড
│   │   └── proguard-rules.pro # Proguard/Obfuscation rules
│   ├── build.gradle            # Android project এর গ্রেডল ফাইল
│   ├── gradle/                 # গ্রেডল স্ক্রিপ্ট ও সেটিংস
│   └── gradle.properties       # গ্রেডল properties ফাইল
│
├── ios/                        # iOS native code ও কনফিগারেশন
│   ├── Runner.xcodeproj/       # Xcode project ফাইল
│   ├── Runner.xcworkspace/     # Xcode workspace ফাইল
│   ├── Runner/                 # iOS native সোর্স কোড ও অ্যাসেট
│   │   ├── AppDelegate.swift   # iOS অ্যাপ ডেলিগেট (লঞ্চ পয়েন্ট)
│   │   ├── Assets.xcassets     # iOS অ্যাপের ইমেজ ও অ্যাসেট
│   │   └── Info.plist          # iOS অ্যাপের মেটাডাটা ও পারমিশন
│   └── Podfile                 # CocoaPods dependency manager কনফিগ
│
├── lib/                        # Dart সোর্স কোড (Flutter app মূল কোড)
│   ├── main.dart               # Flutter অ্যাপের এন্ট্রি পয়েন্ট
│   ├── screens/                # অ্যাপের বিভিন্ন স্ক্রীনের কোড (ভিউ)
│   ├── widgets/                # Custom Widgets ও reusable components
│   ├── models/                 # ডাটা মডেল (class) গুলো রাখে
│   ├── services/               # API, DB বা ব্যাকএন্ড লজিক
│   └── utils/                  # ইউটিলিটি ফাংশন, helper classes
│
├── test/                       # Dart unit & widget টেস্ট ফাইলসমূহ
│
├── build/                      # বিল্ড আউটপুট (auto-generated, ম্যানুয়ালি এডিট করো না)
│
├── .dart_tool/                 # Dart tools এর cache এবং temp ফাইল (auto-gen)
│
├── .idea/                      # Android Studio project সেটিংস ও কনফিগ (IDE ফাইল)
│
├── android.iml                 # Android module ফাইল (IDE specific)
├── ios.iml                     # iOS module ফাইল (IDE specific)
│
├── pubspec.yaml                # প্রকল্পের মেটাডাটা, ডিপেন্ডেন্সি ও অ্যাসেট ডিক্লেয়ারেশন
├── pubspec.lock                # নির্দিষ্ট ডিপেন্ডেন্সির ভার্সন লক করে রাখে
├── .gitignore                  # গিট ignore করার ফাইল/ফোল্ডার তালিকা
├── analysis_options.yaml       # Dart analyzer এর কনফিগারেশন ফাইল (optional)
├── README.md                   # প্রকল্পের বিবরণ ও ডকুমেন্টেশন
│
└── other config files          # যেমন .metadata, .flutter-plugins ইত্যাদি
```

---

## ফোল্ডার ও ফাইলের বিস্তারিত ব্যাখ্যা

### ১. `android/`

* **Purpose:** Android প্ল্যাটফর্মের জন্য প্রয়োজনীয় সকল নেটিভ সোর্স কোড এবং কনফিগারেশন এখানে থাকে।
* **বিশেষ ফাইল:**

  * `AndroidManifest.xml`: অ্যাপের পারমিশন, অ্যাক্টিভিটি, সার্ভিস ডিক্লেয়ার করে।
  * `res/`: লেআউট, ইমেজ, স্ট্রিং রিসোর্স ফাইল।
  * `build.gradle`: Android বিল্ড সিস্টেমের সেটিংস।

### ২. `ios/`

* **Purpose:** iOS প্ল্যাটফর্মের জন্য প্রয়োজনীয় নেটিভ সোর্স কোড ও ফাইল।
* **বিশেষ ফাইল:**

  * `Info.plist`: iOS অ্যাপের মেটাডাটা ও পারমিশন ডিক্লেয়ারেশন।
  * `AppDelegate.swift`: অ্যাপ চালু করার লগিক এখানে থাকে।
  * `Podfile`: iOS ডিপেন্ডেন্সি ম্যানেজমেন্ট।

### ৩. `lib/`

* **Purpose:** Flutter অ্যাপের Dart কোড এখানে রাখা হয়। অ্যাপের UI, লজিক, ডাটা মডেল সব এখানে লেখা হয়।
* **Structure Suggestion:**

  * `main.dart`: অ্যাপের এন্ট্রি পয়েন্ট।
  * `screens/`: বিভিন্ন UI স্ক্রীন (Pages)।
  * `widgets/`: রিইউজেবল উইজেটস।
  * `models/`: ডাটা মডেল ক্লাস।
  * `services/`: API বা ডাটাবেজ সংক্রান্ত লজিক।
  * `utils/`: হেল্পার ফাংশন ও ইউটিলিটি ক্লাস।

### ৪. `test/`

* Dart এবং Flutter টেস্ট কোড রাখা হয়।
* ইউনিট টেস্ট এবং উইজেট টেস্ট করা হয়।

### ৫. `build/`

* Flutter এবং Android/iOS এর বিল্ড আউটপুট এখানে জমা হয়।
* ম্যানুয়ালি এডিট করো না।

### ৬. `.dart_tool/`

* Dart টুলস এর টেম্পোরারি ফাইল ও ক্যাশে।

### ৭. `.idea/`

* Android Studio এর প্রজেক্ট সেটিংস সংক্রান্ত ফাইল।

### ৮. `pubspec.yaml`

* প্রকল্পের নাম, ভার্সন, ডিপেন্ডেন্সি, অ্যাসেট, প্লাগইন ডিক্লেয়ারেশন।
* এই ফাইল দিয়ে ফ্লাটার প্যাকেজ ম্যানেজ হয়।

### ৯. `pubspec.lock`

* নির্দিষ্ট প্যাকেজ ভার্সন লক করে রাখে যাতে সকল ডেভেলপার একই ভার্সনে কাজ করে।

### ১০. `.gitignore`

* কোন ফাইল ও ফোল্ডার গিট রিপোজিটরি থেকে বাদ দেয়া হবে তা উল্লেখ করা হয়।

---

## Flutter Project Structure Flow Summary

| Folder/File    | কাজের ধরন                           | উদাহরণ / ফাইলের ধরন               |
| -------------- | ----------------------------------- | --------------------------------- |
| `lib/`         | অ্যাপের Dart কোড (UI ও লজিক)        | `main.dart`, `screens/home.dart`  |
| `android/`     | অ্যান্ড্রয়েড নেটিভ কোড ও কনফিগারেশন | `AndroidManifest.xml`, `res/`     |
| `ios/`         | আইওএস নেটিভ কোড ও কনফিগারেশন        | `Info.plist`, `AppDelegate.swift` |
| `test/`        | ইউনিট ও উইজেট টেস্ট কোড             | `widget_test.dart`                |
| `pubspec.yaml` | ডিপেন্ডেন্সি ও অ্যাসেট ডিক্লেয়ারেশন | প্যাকেজ ও অ্যাসেট তালিকা          |
| `build/`       | বিল্ড আউটপুট (অটো জেনারেটেড)        | (এডিট করা হয় না)                  |

---

## অতিরিক্ত টিপস

* Flutter অ্যাপের বড় প্রজেক্টে `lib/` ফোল্ডার ভেতরে সাব-ফোল্ডার ব্যবহার করো, যেমন: `screens/`, `widgets/`, `models/`, `services/` ইত্যাদি।
* `android/` ও `ios/` ফোল্ডারে সাধারণত বেশি পরিবর্তন করার দরকার পড়ে না, শুধু যদি নেটিভ কোড বা প্লাগইন সংক্রান্ত কাজ করতে হয়।
* সবসময় `pubspec.yaml` আপডেট করার পরে `flutter pub get` চালাতে হবে।
* বিল্ড বা রান করার সময় Android Studio বা VS Code থেকে সরাসরি চালানো যায়।

