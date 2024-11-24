import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/locale_storage_keys.dart';
import '../../../core/cubits/app_theme/app_theme_cubit.dart';
import '../../../core/enums/status_enum.dart';
import '../../../core/helpers/locale_storage.dart';
import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final AppThemeCubit _appTheme;
  SettingsCubit(this._appTheme) : super(SettingsState());
  late Locale locale = _appTheme.state.locale;
  late bool isDarkMode = _appTheme.state.themeMode == ThemeMode.dark;
  bool isNotificationEnabled = true;

  changeLanguage(String newLanguageCode, BuildContext context) {
    locale = Locale(newLanguageCode);
    context.setLocale(locale);
    LocaleStorage.set(LocaleStorageKeys.languageCodeKey, newLanguageCode);
    _appTheme.changeLanguage(locale);
    emit(state.copyWith(languageStatus: Status.success));
  }

  toggleTheme(bool value) {
    isDarkMode = value;
    LocaleStorage.set(LocaleStorageKeys.darkModeKey, value.toString());
    _appTheme.toggleTheme();
    emit(state.copyWith(themeModeStatus: Status.success));
  }

  toggleNotifications(bool value) async {
    isNotificationEnabled = value;
    emit(state.copyWith(status: Status.initial));
  }

  getNotificationsStatus() async {
    log("isNotificationEnabled $isNotificationEnabled");
  }
}
