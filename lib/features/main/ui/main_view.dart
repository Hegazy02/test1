import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/app_bottom_navigation_bar.dart';
import '../logic/main_cubit.dart';
import '../logic/main_state.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainCubit>();
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: BlocBuilder<MainCubit, MainState>(
            builder: (context, state) {
              return cubit.pages[cubit.currentIndex];
            },
          ),
        ),
      ),
    );
  }
}
