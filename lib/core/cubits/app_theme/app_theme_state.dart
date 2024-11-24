import 'package:flutter/material.dart';

class AppThemeStates {
  final ThemeMode themeMode;
  final Locale locale;
  AppThemeStates({
    this.themeMode = ThemeMode.system,
    this.locale = const Locale('en'),
  });

  AppThemeStates copyWith({
    ThemeMode? themeMode,
    Locale? locale,
  }) {
    return AppThemeStates(
      themeMode: themeMode ?? this.themeMode,
      locale: locale ?? this.locale,
    );
  }
}
