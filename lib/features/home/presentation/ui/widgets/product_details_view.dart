import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductDetailsBody());
  }
}
