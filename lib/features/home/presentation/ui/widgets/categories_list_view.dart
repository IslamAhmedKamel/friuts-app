import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/category_card.dart';
import 'package:gap/gap.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(),
        separatorBuilder: (BuildContext context, int index) {
          return Gap(10.w);
        },
      ),
    );
  }
}
