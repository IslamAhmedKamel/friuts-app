import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class ShoppingHeader extends StatelessWidget {
  const ShoppingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Gap(40.w),
            Text("Item details", style: AppStyles.style20),
          ],
        ),
        Text(
          "Place Order",
          style: AppStyles.style16.copyWith(color: AppColors.orangeColor),
        ),
      ],
    );
  }
}
