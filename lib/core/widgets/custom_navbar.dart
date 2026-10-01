import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_assets.dart';
import 'package:fruits_app/core/utils/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.currentIndex, this.onTap});

  final int currentIndex;
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 22.w,
      currentIndex: currentIndex,
      selectedItemColor: AppColors.primColor,
      unselectedItemColor: AppColors.greyLigth,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.transform_outlined),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 20.r,
            child: Image.asset(AppAssets.profile),
          ),
          label: "",
        ),
      ],
    );
  }
}
