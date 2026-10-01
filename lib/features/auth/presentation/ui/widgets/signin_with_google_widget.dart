import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_assets.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class SigninWithGoogleWidget extends StatelessWidget {
  const SigninWithGoogleWidget({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(900.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.googleLogo, width: 30.w, height: 30.h),
            Gap(8.w),
            Text(
              "Google",
              style: AppStyles.style16.copyWith(color: AppColors.greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
