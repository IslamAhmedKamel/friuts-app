

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning", style: AppStyles.style14),
            Gap(4.h),
            Text("Rafatul Islam", style: AppStyles.style20),
          ],
        ),
        Spacer(),
        Badge(child: Icon(Icons.notifications)),
      ],
    );
  }
}
