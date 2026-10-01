import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/home/data/models/category_model.dart';
import '../../features/home/data/models/product_model.dart';

class SupabaseClientService {
  SupabaseClientService();
  static final SupabaseClientService instance = SupabaseClientService();
  SupabaseClient get client => Supabase.instance.client;

  // ============================================================
  // AUTHENTICATION
  // ============================================================

  /// Sign Up
  Future<AuthResponse> signUp({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      final response = await client.auth.signUp(
        email: email,
        password: password,
        data: {if (name != null) 'name': name},
      );

      return response;
    } on AuthException catch (e) {
      throw Exception('Failed to sign up: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while signing up: $e');
    }
  }

  /// Sign In
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await client.auth.signInWithPassword(
        email: email,
        password: password,
      );

      return response;
    } on AuthException catch (e) {
      throw Exception('Failed to sign in: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while signing in: $e');
    }
  }

  /// ============================================================
  /// GOOGLE SIGN IN
  /// ============================================================

  Future<AuthResponse> signInWithGoogle() async {
    try {
      final googleSignIn = GoogleSignIn.instance;

      await googleSignIn.initialize(
        serverClientId:
            '885327439376-tmulojold227un066e6ill1qp63raksi.apps.googleusercontent.com',
      );

      final googleUser = await googleSignIn.authenticate();

      final googleAuth = googleUser.authentication;

      final idToken = googleAuth.idToken;

      if (idToken == null) {
        throw Exception('Google ID token is null');
      }

      final response = await client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
      );

      return response;
    } on AuthException catch (e) {
      throw Exception('Failed to sign in with Google: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while signing in with Google: $e');
    }
  }

  /// Sign Out
  Future<void> signOut() async {
    try {
      await client.auth.signOut();
    } on AuthException catch (e) {
      throw Exception('Failed to sign out: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while signing out: $e');
    }
  }

  /// Current User
  User? get currentUser {
    return client.auth.currentUser;
  }

  /// Current Session
  Session? get currentSession {
    return client.auth.currentSession;
  }

  /// Check Login
  bool get isLoggedIn {
    return client.auth.currentSession != null;
  }

  /// Update Profile
  Future<UserResponse> updateProfile({
    String? email,
    String? password,
    String? name,
  }) async {
    try {
      final response = await client.auth.updateUser(
        UserAttributes(
          email: email,
          password: password,
          data: {if (name != null) 'name': name},
        ),
      );

      return response;
    } on AuthException catch (e) {
      throw Exception('Failed to update profile: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while updating profile: $e');
    }
  }

  /// Reset Password
  Future<void> resetPassword(String email) async {
    try {
      await client.auth.resetPasswordForEmail(email);
    } on AuthException catch (e) {
      throw Exception('Failed to reset password: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while resetting password: $e');
    }
  }

  /// Auth State Changes
  Stream<AuthState> get authStateChanges {
    return client.auth.onAuthStateChange;
  }

  // ============================================================
  // PRODUCTS
  // ============================================================

  /// Get All Products
  Future<List<ProductModel>> getAllProducts() async {
    try {
      final response = await client.from('products').select();

      return (response as List)
          .map((json) => ProductModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on PostgrestException catch (e) {
      throw Exception('Failed to get products: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while getting products: $e');
    }
  }

  /// Get Product By ID
  Future<ProductModel> getProductById(int id) async {
    try {
      final response = await client
          .from('products')
          .select()
          .eq('id', id)
          .single();

      return ProductModel.fromJson(response);
    } on PostgrestException catch (e) {
      throw Exception('Failed to get product: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while getting product: $e');
    }
  }

  /// Add Product
  Future<ProductModel> addProduct(ProductModel product) async {
    try {
      final response = await client.from('products').select().single();

      return ProductModel.fromJson(response);
    } on PostgrestException catch (e) {
      throw Exception('Failed to add product: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while adding product: $e');
    }
  }

  /// Update Product
  Future<ProductModel> updateProduct(int id, Map<String, dynamic> data) async {
    try {
      final response = await client
          .from('products')
          .update(data)
          .eq('id', id)
          .select()
          .single();

      return ProductModel.fromJson(response);
    } on PostgrestException catch (e) {
      throw Exception('Failed to update product: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while updating product: $e');
    }
  }

  // ============================================================
  // CATEGORIES
  // ============================================================

  /// Get All Categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final response = await client.from('categories').select();

      return (response as List)
          .map((json) => CategoryModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on PostgrestException catch (e) {
      throw Exception('Failed to get categories: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while getting categories: $e');
    }
  }
}
