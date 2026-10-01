import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_assets.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class CategoryCardCategoriesView extends StatelessWidget {
  const CategoryCardCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: 140..h,
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28.32.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AppAssets.mozaSvg,
            color: Colors.orange,
            height: 71.74494934082031.h,
            width: 71.74494934082031.h,
            fit: BoxFit.fill,
          ),

          Column(
            children: [
              Text(
                "Vegetables",
                maxLines: 1,
                style: AppStyles.style16.copyWith(color: AppColors.orangeColor),
              ),
              Text(
                "87 Items",
                maxLines: 1,
                style: AppStyles.style12.copyWith(color: AppColors.orangeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
