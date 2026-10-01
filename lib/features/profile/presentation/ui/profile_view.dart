import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/utils/DI/dependins_injction.dart';
import 'package:fruits_app/features/auth/data/auth_repo/auth_repo_implement.dart';
import 'package:fruits_app/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:fruits_app/features/profile/presentation/ui/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authRepo: getIt.get<AuthRepoImplement>()),
      child: const Scaffold(body: ProfileViewBody()),
    );
  }
}
