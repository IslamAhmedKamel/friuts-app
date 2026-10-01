import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_assets.dart';
import 'package:fruits_app/features/shopping/presentation/ui/cart_item_shopping.dart';
import 'package:fruits_app/features/shopping/presentation/ui/order_summary.dart';
import 'package:fruits_app/features/shopping/presentation/ui/widgets/shopping_header.dart';
import 'package:gap/gap.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Gap(16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const ShoppingHeader(),
          ),
          Gap(20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 20,
                separatorBuilder: (_, __) => Gap(24.h),
                itemBuilder: (context, index) {
                  return CartItem(
                    type: 'VEGETABLES',
                    title: 'Broccoli',
                    price: 150,
                    imageUrl: AppAssets.product2,
                  );
                },
              ),
            ),
          ),
          const OrderSummary(),
        ],
      ),
    );
  }
}
