import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigator {
  static void navigatePushReplacement({
    required BuildContext context,
    required String path,
  }) {
    GoRouter.of(context).pushReplacement(path);
  }

  static void navigatePush({
    required BuildContext context,
    required String path,
    Object? extra,
  }) {
    GoRouter.of(context).push(path, extra: extra);
  }

  static void navigatePop({required BuildContext context}) {
    GoRouter.of(context).pop();
  }
}
