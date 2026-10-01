import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/auth/presentation/ui/widgets/signin_with_google_widget.dart';
import 'package:gap/gap.dart';

class CustomContinueWithGoogleWidget extends StatelessWidget {
  const CustomContinueWithGoogleWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1.5.h,
                color: AppColors.orangeColor,
              ),
            ),
            Gap(16.w),
            Text(
              "OR CONTINUE WITH",
              style: AppStyles.style12.copyWith(
                color: color ?? AppColors.brownLight,
              ),
            ),
            Gap(16.w),
            Expanded(
              child: Divider(
                thickness: 1.5.h,
                color: AppColors.orangeColor,
              ),
            ),
          ],
        ),
        Gap(24.h),
        SigninWithGoogleWidget(
         
        ),
      ],
    );
  }
}
