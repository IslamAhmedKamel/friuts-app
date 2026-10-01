import 'package:fruits_app/core/network/supabase_client.dart';
import 'package:fruits_app/features/auth/data/auth_repo/auth_repo_implement.dart';
import 'package:fruits_app/features/home/data/repo/home_repo.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<HomeRepository>(
    HomeRepository(supabaseService: SupabaseClientService()),
  );
  getIt.registerSingleton<AuthRepoImplement>(
    AuthRepoImplement(supabaseClientService: SupabaseClientService()),
  );
}
