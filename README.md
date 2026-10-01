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
- Authentication
- Home
- Categories
- Shopping / Cart
- Profile

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
