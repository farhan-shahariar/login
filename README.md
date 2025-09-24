# 🔐 Flutter Login Screen

A Flutter login screen project with **email & password validation**, **password visibility toggle**, **custom theming**, and **SnackBar notifications**.  
This project is designed as a starter template for learning **form handling** and **UI customization** in Flutter.

---

## ✨ Features
- 📧 **Email Validation**  
  - Ensures proper email format  
- 🔑 **Password Validation**  
  - Minimum 6 characters  
  - At least one uppercase letter  
  - At least one number  
- 👁️ **Show/Hide Password Toggle**  
- 🎨 **Custom Theming**  
  - Styled buttons, text, and input fields  
- 📝 **Form with GlobalKey** for validation handling  
- 🍭 **SnackBar Notifications** for success & error messages  

---

## 📂 Project Structure
lib/
├── main.dart # Entry point
├── app.dart # MyApp with MaterialApp & ThemeData
├── screens/
│ └── login_screen.dart # Login screen UI & validation
├── utils/
│ ├── app_constants.dart # Email RegExp validation
│ └── show_snack_bar.dart # Snackbar utility function

---

## 🛠️ Tech Stack
- [Flutter](https://flutter.dev/)  
- Dart  
- Material Design Widgets  

---

## 🚀 Getting Started

### 1️⃣ Clone the repository
```bash
git clone https://github.com/your-username/flutter-login-screen.git
cd flutter-login-screen

2️⃣ Install dependencies
flutter pub get

3️⃣ Run the app
flutter run

---

## 🎯 Purpose

This project is perfect for beginners who want to learn:

How to build forms in Flutter

How to validate user input

How to apply Material theming

How to provide user feedback with SnackBars
