import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/home/data/repo/home_repo.dart';
import 'package:fruits_app/features/home/presentation/logic/get_all_products_cubit/get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit(this.repository) : super(GetAllProductsInitial());

  final HomeRepository repository;

  Future<void> getAllProducts() async {
    emit(GetAllProductsLoading());
    try {
      final products = await repository.getAllProducts();
      emit(GetAllProductsSuccess(products: products));
    } catch (e) {
      emit(GetAllProductsFailure(errorMessage: e.toString()));
    }
  }
}
