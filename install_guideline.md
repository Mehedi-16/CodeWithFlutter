# Flutter + Android Studio + Emulator Setup Guide (macOS)

---

## 🔹 Step 1: Flutter SDK ডাউনলোড ও ইনস্টল

### ডাউনলোড লিংক:
[Flutter SDK Download for macOS](https://docs.flutter.dev/get-started/install/macos#install-flutter-manually)

### Input:

```bash
cd ~/Downloads
unzip flutter_macos_*.zip
mv flutter ~/FlutterDev
````

### Output:

* Flutter SDK `~/FlutterDev/flutter` ফোল্ডারে এক্সট্রাক্ট হয়ে যাবে।

---

### Input:

```bash
nano ~/.zshrc
```

* `.zshrc` ফাইল ওপেন হবে।
* নিচের লাইন যুক্ত করো ফাইলের শেষে:

```bash
export PATH="$PATH:$HOME/FlutterDev/flutter/bin"
```

* তারপর `Control + X` → `Y` → `Enter` চাপো।

### Output:

* PATH এ Flutter এর `bin` যোগ হয়ে যাবে।

---

### Input:

```bash
source ~/.zshrc
```

### Output:

* PATH আপডেট হবে, Flutter কমান্ড চালানো যাবে।

---

### Input:

```bash
flutter doctor
```

### Output (প্রথমবারে সমস্যা থাকতে পারে, কিন্তু Flutter ইনস্টল আছে বুঝাবে):

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, ...)
[!] Android toolchain - develop for Android devices (Android SDK version ...)
[!] Xcode - develop for iOS and macOS (Xcode 12.x)
...
```

---

## 🔹 Step 2: Android Studio ডাউনলোড ও ইনস্টল

### ডাউনলোড লিংক:

[Android Studio Download](https://developer.android.com/studio)

---

### Input: Android Studio ওপেন করো

* **Settings > Plugins** →
  সার্চ করো `Flutter` → Install করো।
  Dart plugin অটোমেটিক ইনস্টল হবে।

### Output:

* Android Studio Flutter development এর জন্য প্রস্তুত হবে।

---

## 🔹 Step 3: Android SDK ও Emulator কনফিগারেশন

### Input: Android Studio থেকে

* **Tools > SDK Manager**
* নিচের আইটেমগুলো চেক করো (install বা update করো):

  * Android SDK Platform (latest, e.g. API 35)
  * Android SDK Command-line Tools
  * Android Emulator
  * Google USB Driver (Windows হলে দরকার)

### Output:

* SDK ও Tools ইনস্টল/আপডেট হবে।

---

### Input: Android Studio থেকে

* **Tools > Device Manager (AVD Manager)**
* **Create Device** → Pixel 4 XL (বা পছন্দসই ডিভাইস) সিলেক্ট করো।
* **System Image:** API 35 Google APIs ARM64 v8a (যদি M1 Mac হয়) সিলেক্ট করো।
* Next → Finish ক্লিক করো।
* অপেক্ষা করো system image ডাউনলোড ও ইনস্টল হওয়ার জন্য।

### Output:

* Android Virtual Device (Emulator) তৈরি ও ডাউনলোড সম্পন্ন হবে।

---

## 🔹 Step 4: Xcode (macOS/iOS development এর জন্য)

### ডাউনলোড লিংক:

[Xcode - Mac App Store](https://apps.apple.com/app/xcode/id497799835?mt=12)

---

### Input:

* App Store থেকে **Xcode** ডাউনলোড ও ইনস্টল করো।
* Terminal থেকে চালাও:

```bash
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```

### Output:

* Xcode CLI tools সেটআপ হবে।

---

## 🔹 Step 5: CocoaPods ইনস্টল (iOS/macOS প্লাগিনের জন্য)

### Input:

```bash
sudo gem install cocoapods
```

### Output:

* CocoaPods সফলভাবে ইনস্টল হবে।
* ইনস্টল শেষে `pod --version` দিয়ে চেক করতে পারো।

---

## 🔹 Step 6: Android Licenses Accept করা

### Input:

```bash
flutter doctor --android-licenses
```

* `y` চাপিয়ে সব লাইসেন্স একসেপ্ট করো।

### Output:

* Android SDK লাইসেন্স গুলো একসেপ্ট হয়ে যাবে।

---

## 🔹 Step 7: Flutter Doctor দিয়ে চেক করা

### Input:

```bash
flutter doctor
```

### Output:

```
[✓] Flutter (Channel stable, ...)
[✓] Android toolchain - develop for Android devices (Android SDK version ...)
[✓] Xcode - develop for iOS and macOS (Xcode ...)
[✓] Chrome - develop for the web
[✓] Android Studio (version ...)
[✓] Connected device (2 available)
[✓] Network resources
```

* সব অংশে ✔ টিক (no errors/warnings) আসবে।

---

## 🔹 Step 8: নতুন Flutter Project তৈরি ও রান

### Input:

```bash
flutter create my_app
cd my_app
flutter run
```

* Android emulator চালু না থাকলে Android Studio থেকে চালাও বা
* Real Android device USB দিয়ে কানেক্ট করে USB Debugging চালু করো।

### Output:

* তোমার ডিফল্ট Flutter অ্যাপ Emulator বা Real device-এ রান হবে।

---

## 🔹 Troubleshooting (সমস্যা ও সমাধান)

| সমস্যা                              | কারণ                                 | সমাধান                                                             |
| ----------------------------------- | ------------------------------------ | ------------------------------------------------------------------ |
| `flutter: command not found`        | PATH ঠিকমতো সেট হয়নি                 | `source ~/.zshrc` চালাও অথবা `.zshrc` ফাইল চেক করো                 |
| Android licenses not accepted       | লাইসেন্স একসেপ্ট করা হয়নি            | `flutter doctor --android-licenses` চালিয়ে `y` দিয়ে একসেপ্ট করো    |
| CocoaPods not installed             | iOS/macOS প্লাগিন চালানোর জন্য দরকার | `sudo gem install cocoapods` চালাও                                 |
| Emulator slow বা crash করে          | সঠিক system image নয় বা কম র‍্যাম    | ARM64 v8a Google APIs image সিলেক্ট করো, প্রয়োজন হলে cold boot দাও |
| Xcode warning multiple destinations | Mac architecture mismatch warning    | সাধারণত ignore করা যায়, সমস্যা না হলে চালিয়ে যাও                   |

---

## 🔹 Extra Tips

* VS Code থেকে সরাসরি Flutter প্রজেক্ট ওপেন করে Run করতে পারো।
* macOS অ্যাপে রান করতে চাইলে:

```bash
flutter config --enable-macos-desktop
flutter run -d macos
```

---

## Youtube link : 
https://youtu.be/KdO9B_CZmzo?si=ARnUksjIgA7JJ5ZZ
https://youtu.be/BqHOtlh3Dd4?si=UmxtPfD9ObxS6F4j
