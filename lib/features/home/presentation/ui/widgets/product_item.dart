import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_router.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/home/data/models/product_model.dart';
import 'package:go_router/go_router.dart';

class ProductItem extends StatelessWidget {
  final ProductModel? productModel;

  const ProductItem({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (productModel != null) {
          GoRouter.of(context).push(AppRouter.productDetailsViewPath);
        }
      },
      child: Stack(
        children: [
          Container(
            width: 200.w,
            height: 300.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  productModel?.imageUrl ??
                      "https://tabpovlrgyuvqindfqqu.supabase.co/storage/v1/object/sign/products_images/product4.png?token=eyJraWQiOiI2OTMwM2RjNy0xYzc4LTQxYzUtOGE1Ni0wNTA2YTQ4MjUwZTMiLCJhbGciOiJIUzUxMiJ9.eyJ1cmwiOiJwcm9kdWN0c19pbWFnZXMvcHJvZHVjdDQucG5nIiwic2NvcGUiOiJkb3dubG9hZCIsImlhdCI6MTc5MDYxNTE5OSwiZXhwIjoxODIyMTUxMTk5fQ.NWlsu8fqCtLse2sTDWUmdUSXsei9UoCkQ4xR5EJn3-DXN_kK4oQcOp9DbGCbCk6B0Enp3_6oYi-nH_MQstTSoQ",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(18.r),
            ),
          ),

          Positioned(
            top: 20.h,
            left: 20.w,
            right: 20.w,
            bottom: 20.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite, color: Colors.white, size: 30.w),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productModel?.name ?? 'Avocado',
                      style: AppStyles.style18.copyWith(color: Colors.white),
                    ),

                    Text(
                      productModel?.price.toString() ?? '6.7',
                      style: AppStyles.style18.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
