import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_router.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/core/utils/widgets/custom_btn.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/AdsPageView.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/categories_list_view.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/custom_appbar.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/products_list_view.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Gap(19.h),
                        const CustomAppBar(),
                        Gap(16.h),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.23,
                          child: const AdsPageView(),
                        ),
                        Gap(16.h),
                        Row(
                          children: [
                            Text("Categories", style: AppStyles.style18),
                            const Spacer(),
                            const Icon(Icons.arrow_forward),
                          ],
                        ),
                        Gap(16.h),
                        const CategoriesListView(),
                        Gap(16.h),
                        Row(
                          children: [
                            Text("Trending Deals", style: AppStyles.style18),
                            const Spacer(),
                            const Icon(Icons.arrow_forward),
                          ],
                        ),
                        Gap(16.h),
                        Gap(24.h),
                      ],
                    ),
                  ),
                  const ProductsListView(),
                ],
              ),
            ),
            CustomBtn(
              title: "More",
              color: AppColors.orangeColor,
              onTap: () {
                GoRouter.of(context).push(AppRouter.productsViewPath);
              },
            ),
            Gap(16.h),
          ],
        ),
      ),
    );
  }
}
