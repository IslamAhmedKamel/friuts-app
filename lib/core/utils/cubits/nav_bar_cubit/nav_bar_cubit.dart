import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/categories/presentation/ui/categories_view.dart';
import 'package:fruits_app/features/home/presentation/ui/home_view.dart';
import 'package:fruits_app/features/profile/presentation/ui/profile_view.dart';
import 'package:fruits_app/features/shopping/presentation/ui/shopping_view.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
  int currentIndex = 0;
  List<Widget> taps = [
    HomeView(),
    CategoriesView(),
    ShoppingView(),
    Center(child: Text("transactions")),
    ProfileView()
  ];
  void changeIndex({required int index}) {
    currentIndex = index;
    emit(NavBarInitial());
  }
}
