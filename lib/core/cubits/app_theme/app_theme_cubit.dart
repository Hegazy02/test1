import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/locale_storage_keys.dart';
import '../../helpers/locale_storage.dart';
import 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeStates> {
  AppThemeCubit() : super(AppThemeStates());

  init() async {
    String isDarkMode =
        await LocaleStorage.get(LocaleStorageKeys.darkModeKey) ?? 'false';
    emit(state.copyWith(
        themeMode: isDarkMode == 'true' ? ThemeMode.dark : ThemeMode.light,
        locale: await getLanguage()));
  }

  toggleTheme() async {
    emit(state.copyWith(
        themeMode: state.themeMode == ThemeMode.dark
            ? ThemeMode.light
            : ThemeMode.dark));
  }

  changeLanguage(Locale locale) async {
    emit(state.copyWith(locale: locale));
  }

  getLanguage() async {
    String languageCode =
        await LocaleStorage.get(LocaleStorageKeys.languageCodeKey) ?? 'ar';
    Locale locale = Locale(languageCode);
    return locale;
  }
}

isRTL(BuildContext context) {
  return Directionality.of(context) == TextDirection.rtl;
}
