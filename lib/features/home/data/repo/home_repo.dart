import 'package:fruits_app/core/network/supabase_client.dart';

import '../models/category_model.dart';
import '../models/product_model.dart';

class HomeRepository {
  final SupabaseClientService supabaseService;

  HomeRepository({required this.supabaseService});

  Future<List<ProductModel>> getAllProducts() {
    return supabaseService.getAllProducts();
  }

  Future<List<CategoryModel>> getAllCategories() {
    return supabaseService.getAllCategories();
  }
}
