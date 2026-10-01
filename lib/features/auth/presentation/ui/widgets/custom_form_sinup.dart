import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_router.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/core/utils/functions/app_navigator.dart';
import 'package:fruits_app/core/utils/widgets/custom_btn.dart';
import 'package:fruits_app/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:gap/gap.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/features/auth/presentation/ui/widgets/custom_text_field_signup.dart';

class CustomFormSinup extends StatelessWidget {
  const CustomFormSinup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
          if (state is RegisterSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text(
                  " تم تسجيل الدخول بنجاح",
                  style: AppStyles.style16.copyWith(color: Colors.white),
                ),
              ),
            );
            AppNavigator.navigatePushReplacement(
              context: context,
              path: AppRouter.home,
            );
          } else if (state is RegisterFailure) {
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
      
      builder: (BuildContext context, AuthState state) {
        var auth = context.read<AuthCubit>();
        return Form(
          key: auth.formKey,
          child: Column(
            children: [
              const Gap(16),
              CustomTextFieldSinUp(
                controller: auth.emailControler,
                title: "Email Address",
                hintText: "jane@example.com",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_rounded),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // تحقق من صحة البريد الإلكتروني
                  final emailRegex = RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  );
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const Gap(16),
              CustomTextFieldSinUp(
                controller: auth.passwordControler,
                title: " Password",
                hintText: "••••••••",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {},

                  color: AppColors.brownLight,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  if (value.length > 20) {
                    return 'Password must be less than 20 characters';
                  }
                  // تحقق من وجود حرف كبير
                  if (!RegExp(r'[A-Z]').hasMatch(value)) {
                    return 'Password must contain at least one uppercase letter';
                  }
                  // تحقق من وجود حرف صغير
                  if (!RegExp(r'[a-z]').hasMatch(value)) {
                    return 'Password must contain at least one lowercase letter';
                  }
                  // تحقق من وجود رقم
                  if (!RegExp(r'[0-9]').hasMatch(value)) {
                    return 'Password must contain at least one number';
                  }
                  // تحقق من وجود رمز خاص
                  if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                    return 'Password must contain at least one special character';
                  }
                  return null;
                },
              ),

              const Gap(16),
              state is RegisterLoading
                  ? CupertinoActivityIndicator(
                      color: AppColors.primColor,
                      radius: 20.r,
                    )
                  : CustomBtn(
                      onTap: () {
                        auth.register();
                      },
                      title: "SignUp",
                      color: AppColors.orangeColor,
                    ),
              // const CircularProgressIndicator(),
            ],
          ),
        );
      },
    );
  }
}
