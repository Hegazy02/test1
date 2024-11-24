import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/translations/locale_keys.g.dart';

import '../../features/main/logic/main_cubit.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildBottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          activeIcon: const Icon(Icons.home),
          label: LocaleKeys.home.tr(),
        ),
        _buildBottomNavigationBarItem(
          icon: const Icon(Icons.favorite_border),
          activeIcon: const Icon(Icons.favorite),
          label: LocaleKeys.wish_list.tr(),
        ),
        _buildBottomNavigationBarItem(
          icon: const Icon(Icons.settings_outlined),
          activeIcon: const Icon(Icons.settings),
          label: LocaleKeys.settings.tr(),
        ),
      ],
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
          context.read<MainCubit>().changePage(value);
        });
      },
    );
  }

  _buildBottomNavigationBarItem({
    required Widget icon,
    required Widget activeIcon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      activeIcon: activeIcon,
      label: label,
    );
  }
}
