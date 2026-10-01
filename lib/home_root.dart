import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/utils/cubits/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:fruits_app/core/widgets/custom_navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: context
              .read<NavBarCubit>()
              .taps[context.read<NavBarCubit>().currentIndex],
          bottomNavigationBar: CustomNavBar(
            currentIndex: context.read<NavBarCubit>().currentIndex,
            onTap:(index) => 
             context.read<NavBarCubit>().changeIndex(
              index: index,
            ),
          ),
        );
      },
    );
  }
}
