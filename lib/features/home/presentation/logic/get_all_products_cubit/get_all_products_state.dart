import 'package:fruits_app/features/home/data/models/product_model.dart';

abstract class GetAllProductsState {}

final class GetAllProductsInitial extends GetAllProductsState {}

final class GetAllProductsLoading extends GetAllProductsState {}

final class GetAllProductsSuccess extends GetAllProductsState {
  final List<ProductModel> products;

  GetAllProductsSuccess({required this.products});
}

final class GetAllProductsFailure extends GetAllProductsState {
  final String errorMessage;

  GetAllProductsFailure({required this.errorMessage});
}
