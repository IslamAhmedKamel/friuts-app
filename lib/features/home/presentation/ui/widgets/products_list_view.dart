import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/home/presentation/logic/get_all_products_cubit/get_all_products_cubit.dart';
import 'package:fruits_app/features/home/presentation/logic/get_all_products_cubit/get_all_products_state.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/product_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
      builder: (context, state) {
        if (state is GetAllProductsSuccess) {
          return SliverGrid.builder(
            itemCount: 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 5,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
            ),
            itemBuilder: (context, index) {
              return Skeletonizer(
                containersColor: Colors.blueGrey,
                enabled: false,
                child: ProductItem(productModel: state.products[index]),
              );
            },
          );
        }
        if (state is GetAllProductsFailure) {
          return SliverFillRemaining(
            child: Center(
              child: Text(state.errorMessage, textAlign: TextAlign.center),
            ),
          );
        }
        return const SliverToBoxAdapter(child: SizedBox.shrink());
      },
    );
  }
}
