import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/utils/DI/dependins_injction.dart';
import 'package:fruits_app/features/home/data/repo/home_repo.dart';
import 'package:fruits_app/features/home/presentation/logic/get_all_products_cubit/get_all_products_cubit.dart';
import 'package:fruits_app/features/home/presentation/ui/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllProductsCubit(getIt.get<HomeRepository>())..getAllProducts(),
      child: const HomeBody(),
    );
  }
}
