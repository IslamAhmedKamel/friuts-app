# 🍎 Fruits App

A modern **Flutter e-commerce application** for browsing and shopping fresh fruits through a clean, responsive mobile experience.

The project is built with Flutter using **BLoC/Cubit**, **Supabase**, feature-based architecture, and reusable UI components.

## ✨ Features

- 🔐 Email & password authentication
- 🔵 Google Sign-In
- 🏠 Home screen with featured products
- 🍓 Browse fruits by category
- 🛒 Shopping/cart flow
- 👤 User profile
- 🔄 Loading states and skeleton UI
- 📱 Responsive UI with `flutter_screenutil`
- 🧭 Declarative navigation with `go_router`
- 🎨 SVG assets and reusable UI components
- ☁️ Supabase integration for authentication and backend services
- 🧩 Feature-based project structure

## 🛠️ Tech Stack

| Technology | Usage |
| --- | --- |
| **Flutter / Dart** | Cross-platform mobile development |
| **flutter_bloc** | State management |
| **Supabase** | Authentication & backend services |
| **Google Sign-In** | Social authentication |
| **go_router** | Navigation |
| **GetIt** | Dependency injection |
| **ScreenUtil** | Responsive UI |
| **Skeletonizer** | Loading/skeleton states |
| **Flutter Slidable** | Swipeable UI interactions |
| **Flutter SVG** | SVG assets |
| **Shared Preferences** | Local persistence |

## 🏗️ Project Structure

```text
lib/
├── core/
│   ├── network/
│   ├── utils/
│   └── ...
│
├── features/
│   ├── auth/
│   ├── categories/
│   ├── home/
│   ├── profile/
│   ├── shopping/
│   └── splash/
│
├── home_root.dart
├── root_app.dart
└── main.dart
```

Each major application feature is isolated under `features/`, making the codebase easier to maintain, test, and extend.

## 🚀 Getting Started

### Prerequisites

Make sure you have installed:

- [Flutter](https://docs.flutter.dev/get-started/install)
- Dart SDK compatible with the project
- Android Studio or Xcode for mobile development
- A Supabase project

### Installation

```bash
git clone https://github.com/IslamAhmedKamel/friuts-app.git
cd friuts-app
flutter pub get
flutter run
```

### 🔐 Supabase Configuration

The application uses Supabase for authentication and backend services.

Before running the project, configure your Supabase project and provide the required Supabase URL and anonymous/publishable key according to your local environment configuration.

> **Important:** Never commit private API keys, service-role keys, passwords, or other secrets to GitHub.

## 📱 Main Screens

The application is organized around the following main flows:

- Splash
- <img width="120" height="250" alt="Screenshot_1790863437" src="https://github.com/user-attachments/assets/b45265a5-1104-4b87-99de-8d87f275f761" />
- Onboarding
- <img width="120" height="250" alt="Screenshot_1790863708" src="https://github.com/user-attachments/assets/a61312be-373d-4a0f-b57c-4f8cc5ea1ed7" /> <img width="120" height="250" alt="Screenshot_1790863700" src="https://github.com/user-attachments/assets/1f2f8725-54be-4f3a-8d06-cf1fb53c06d7" /> <img width="120" height="250" alt="Screenshot_1790863715" src="https://github.com/user-attachments/assets/349f9d33-cd7c-4594-811a-8f7526288f16" />
- Authentication
- <img width="120" height="250" alt="Screenshot_1790863735" src="https://github.com/user-attachments/assets/0e9b2279-5e35-404e-aa0c-dd67ac7ce0de" /> <img width="120" height="250" alt="Screenshot_1790863726" src="https://github.com/user-attachments/assets/7ad6884c-8075-4522-8fb5-062e094adb62" />
- Home
- <img width="120" height="250" alt="Screenshot_1790863456" src="https://github.com/user-attachments/assets/0ce29599-679f-43b7-b194-062b7e937536" />
- Categories
- <img width="120" height="250" alt="Screenshot_1790863483" src="https://github.com/user-attachments/assets/ecd2a5c6-59c8-484e-9b5e-e59ecc7aa9c5" />
- Shopping / Cart
- <img width="120" height="250" alt="Screenshot_1790863479" src="https://github.com/user-attachments/assets/91792250-7237-4e2e-be4c-59d5aac34abc" />
## 🧠 Architecture & Development Practices

The project follows a **feature-based architecture** with separation between UI, state management, repositories, models, and shared/core functionality where applicable.

Key practices used in the project include:

- BLoC/Cubit for predictable state management
- Repository pattern for data access
- Dependency injection with GetIt
- Reusable widgets and components
- Responsive layouts
- Explicit loading and error states
- Separation of feature-specific code from shared core utilities

## 📦 Main Dependencies

Some of the main packages used in the project:

```yaml
flutter_bloc
supabase_flutter
google_sign_in
go_router
get_it
flutter_screenutil
skeletonizer
flutter_slidable
flutter_svg
shared_preferences
gap
```

## 🔮 Future Improvements

- 💳 Payment integration
- ❤️ Favorites / wishlist
- 🔔 Push notifications
- 📦 Order tracking
- ⭐ Product reviews and ratings
- 🔎 Product search and filtering
- 🧪 Unit and widget tests
- 🚀 CI/CD automation

## 👨‍💻 Author

**Islam Ahmed Kamel**

Flutter Developer focused on building clean, responsive, and maintainable mobile applications.

- GitHub: [IslamAhmedKamel](https://github.com/IslamAhmedKamel)

## ⭐ Support

If you find this project useful or interesting, consider giving the repository a ⭐ on GitHub.

---

**Built with ❤️ using Flutter**
