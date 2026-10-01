import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/utils/app_router.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/core/utils/functions/app_navigator.dart';
import 'package:fruits_app/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LogoutSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(
                  "تم تسجيل الخروج بنجاح",
                  style: AppStyles.style16.copyWith(color: Colors.white),
                ),
              ),
            );
            AppNavigator.navigatePushReplacement(
              context: context,
              path: AppRouter.signUpPath,
            );
          } else if (state is LogoutFailure) {
            log("LogoutFailure");
          }
        },
        builder: (context, state) {
          return Center(
            child: TextButton(
              onPressed: () {
                context.read<AuthCubit>().logout();
              },
              child: Text("Log Out"),
            ),
          );
        },
      ),
    );
  }
}
