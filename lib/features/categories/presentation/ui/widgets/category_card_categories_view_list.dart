
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/categories/presentation/ui/widgets/category_card_categories_view.dart';

class CategoryCardCategoriesViewList extends StatelessWidget {
  const CategoryCardCategoriesViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => CategoryCardCategoriesView(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.w,
        crossAxisSpacing: 12.h,
      ),
    );
  }
}
