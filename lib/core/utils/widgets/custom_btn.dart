import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.onTap, required this.title, this.icon, this.color});
  final void Function()? onTap;
  final String title;
  final Widget? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
        color: color,
        child: SizedBox(
          height: 62.h,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppStyles.style18.copyWith(color: Colors.white),
              ),
              icon == null ? Gap(1.w) : icon!,
            ],
          ),
        ),
      ),
    );
  }
}
