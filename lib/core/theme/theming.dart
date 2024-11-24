import 'package:flutter/material.dart';

import 'app_colors.dart';

class Theming {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(
      color: AppColors.primaryColor,
    ),
    switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return AppColors.defaultGrey;
        }),
        trackOutlineColor: const WidgetStatePropertyAll(
          AppColors.defaultGrey,
        ),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primaryColor;
          }
          return Colors.white60;
        })),
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xfffbfbfb),
    primaryColor: AppColors.primaryColor,
    primarySwatch: primarySwatch,
    indicatorColor: AppColors.primaryColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primaryColor,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: primarySwatch,
      brightness: Brightness.light,
      accentColor: AppColors.primaryColor,
    ).copyWith(secondary: AppColors.primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    )),
    dividerTheme: const DividerThemeData(
      color: AppColors.lightGrey,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.primaryColor,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(fontWeight: FontWeight.w700),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
    ),
    canvasColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primaryColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.cursedBlack,
    iconTheme: const IconThemeData(
      color: AppColors.secondaryColor,
    ),
    primarySwatch: primarySwatch,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.secondaryColor,
    ),
    switchTheme:
        SwitchThemeData(thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return AppColors.defaultGrey;
    }), trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return AppColors.defaultGrey;
    }), trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.secondaryColor;
      }
      return Colors.white60;
    })),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: darkPrimarySwatch,
      brightness: Brightness.dark,
      accentColor: AppColors.secondaryColor,
    ).copyWith(secondary: AppColors.secondaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    )),
    dividerTheme: const DividerThemeData(
      color: AppColors.lightGrey,
    ),
    dividerColor: AppColors.lightGrey,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.secondaryColor,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(fontWeight: FontWeight.w700),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
    ),
  );
}

final MaterialColor primarySwatch =
    MaterialColor(AppColors.primaryColor.value, const {
  50: AppColors.primaryColor,
  100: AppColors.primaryColor,
  200: AppColors.primaryColor,
  300: AppColors.primaryColor,
  400: AppColors.primaryColor,
  500: AppColors.primaryColor,
  600: AppColors.primaryColor,
  700: AppColors.primaryColor,
  800: AppColors.primaryColor,
  900: AppColors.primaryColor,
});

final MaterialColor darkPrimarySwatch =
    MaterialColor(AppColors.secondaryColor.value, const {
  50: AppColors.secondaryColor,
  100: AppColors.secondaryColor,
  200: AppColors.secondaryColor,
  300: AppColors.secondaryColor,
  400: AppColors.secondaryColor,
  500: AppColors.secondaryColor,
  600: AppColors.secondaryColor,
  700: AppColors.secondaryColor,
  800: AppColors.secondaryColor,
  900: AppColors.secondaryColor,
});
