import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/cubits/app_theme/app_theme_cubit.dart';
import 'package:test1/core/di/get_it.dart';

import '../../home/data/repos/home_repo.dart';
import '../../home/logic/home_cubit.dart';
import '../../home/ui/home_view.dart';
import '../../settings/logic/settings_cubit.dart';
import '../../settings/ui/settings_view.dart';
import '../../wish_list/data/repos/wish_list_repo.dart';
import '../../wish_list/logic/wish_list_cubit.dart';
import '../../wish_list/ui/wish_list_view.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState());
  int currentIndex = 0;
  changePage(int index) {
    log("index: $index");
    if (index != currentIndex) {
      currentIndex = index;
      emit(state.copyWith());
    }
  }

  List<Widget> pages = [
    BlocProvider(
      create: (context) => HomeCubit(getIt<HomeRepo>()),
      child: const HomeView(),
    ),
    BlocProvider(
      create: (context) => WishListCubit(getIt<WishListRepo>()),
      child: const WishListView(),
    ),
    BlocProvider(
      create: (context) => SettingsCubit(context.read<AppThemeCubit>()),
      child: const SettingsView(),
    ),
  ];
}
