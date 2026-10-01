import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/shopping/presentation/ui/quantity_button-row.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.type,
  });

  final String type;
  final String title;
  final double price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16.r),
      elevation: 3,
      shadowColor: Colors.grey.shade400,
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              flex: 1,
              autoClose: false,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
              onPressed: (context) {},
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(12.w),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  imageUrl,
                  width: 93.w,
                  height: 113.w,
                  fit: BoxFit.fill,
                  errorBuilder: (_, __, ___) {
                    return Container(
                      width: 80.w,
                      height: 80.w,
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
              Gap(24.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.style12,
                    ),
                    Gap(4.h),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.style16,
                    ),
                    Gap(8.h),
                    Text(
                      '${price.toStringAsFixed(0)} EGP',
                      style: AppStyles.style14.copyWith(
                        color: AppColors.orangeColor,
                      ),
                    ),
                    Gap(16.h),
                    QuantityButtonRow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
