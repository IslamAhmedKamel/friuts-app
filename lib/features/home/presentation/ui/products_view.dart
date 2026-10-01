import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/products_view_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ProductsScreenBody()));
  }
}
