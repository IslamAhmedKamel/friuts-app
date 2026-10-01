import 'package:fruits_app/core/network/supabase_client.dart';
import 'package:fruits_app/features/auth/data/auth_repo/auth_repo.dart';

class AuthRepoImplement implements AuthRepo {
  final SupabaseClientService supabaseClientService;

  AuthRepoImplement({
    required this.supabaseClientService,
  });

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await supabaseClientService.signIn(
        email: email,
        password: password,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> register({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      await supabaseClientService.signUp(
        email: email,
        password: password,
        name: name,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      await supabaseClientService.signInWithGoogle();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      await supabaseClientService.signOut();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}