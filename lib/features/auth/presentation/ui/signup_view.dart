import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_router.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/core/utils/functions/app_navigator.dart';
import 'package:fruits_app/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:fruits_app/features/auth/presentation/ui/widgets/custom_form_sinup.dart';
import 'package:fruits_app/features/auth/presentation/ui/widgets/have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/ui/widgets/signin_with_google_widget.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is GoogleLoginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text(
                  " تم تسجيل الدخول بتواسطة جوجل بنجاح",
                  style: AppStyles.style16.copyWith(color: Colors.white),
                ),
              ),
            );
            AppNavigator.navigatePushReplacement(
              context: context,
              path: AppRouter.home,
            );
          } else if (state is GoogleLoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.redAccent,
                content: Text(
                  "حاول مرة اخرى لا يتوفر اتصال بالانترنت أو ربما الاتصال ضعيف",
                  style: AppStyles.style16.copyWith(color: Colors.white),
                ),
              ),
            );
          }
        },
      
      
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.whiteLigth,
            body: AbsorbPointer(
              absorbing: state is RegisterLoading || state is GoogleLoginLoading
                  ? true
                  : false,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(32.h),
                        Text("Join Skatee", style: AppStyles.style28),
                        Gap(12.h),
                        Text(
                          "Sign up to start your Shopping Market",
                          style: AppStyles.style16,
                        ),
                        Gap(32.h),
                        CustomFormSinup(),
                        Gap(32.h),
                        SigninWithGoogleWidget(
                          onTap: () {
                            context.read<AuthCubit>().signInWithGoogle();
                          },
                        ),
                        HaveAnAccount(
                          onTap: () {
                            AppNavigator.navigatePushReplacement(
                              context: context,
                              path: AppRouter.signInPath,
                            );
                          },
                          title: "Already have an account? ",
                          wayRegisterText: "Login",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
