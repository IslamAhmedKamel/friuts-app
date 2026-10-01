import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/utils/DI/dependins_injction.dart';
import 'package:fruits_app/core/utils/cubits/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:fruits_app/features/auth/data/auth_repo/auth_repo_implement.dart';
import 'package:fruits_app/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:fruits_app/features/auth/presentation/ui/signin_view.dart';
import 'package:fruits_app/features/auth/presentation/ui/signup_view.dart';
import 'package:fruits_app/features/home/presentation/ui/products_view.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/product_details_view.dart';
import 'package:fruits_app/features/splash/presentation/ui/onboarding_view.dart';
import 'package:fruits_app/features/splash/presentation/ui/splash_view.dart';
import 'package:fruits_app/home_root.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // static const splashPath = '/';
  static const splashPath = '/';
  static const onboardingPath = '/onboardingPath';
  static const signInPath = '/signInPath';
  static const signUpPath = '/signUpPath';
  static const homePath = '/homePath';
  static const home = '/home';
  static const productDetailsViewPath = '/productDetailsViewPath';
  static const productsViewPath = '/productsViewPath';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashPath,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: onboardingPath,
        builder: (BuildContext context, GoRouterState state) {
          return OnboardingView();
        },
      ),
      GoRoute(
        path: signInPath,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) =>
                AuthCubit(authRepo: getIt.get<AuthRepoImplement>()),
            child: SigninView(),
          );
        },
      ),
       GoRoute(
        path: signUpPath,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) =>
                AuthCubit(authRepo: getIt.get<AuthRepoImplement>()),
            child: SignupView(),
          );
        },
      ),
      GoRoute(
        path: home,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => NavBarCubit(),
            child: const Home(),
          );
        },
      ),
      GoRoute(
        path: productsViewPath,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductsScreen();
        },
      ),
      GoRoute(
        path: productDetailsViewPath,
        builder: (BuildContext context, GoRouterState state) {
          return ProductDetailsView();
        },
      ),
    ],
  );
}
