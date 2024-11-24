import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/cubits/app_theme/app_theme_cubit.dart';
import 'core/cubits/app_theme/app_theme_state.dart';
import 'core/routes/routes.dart';
import 'core/theme/theming.dart';

class Test1App extends StatelessWidget {
  const Test1App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit()..init(),
      child: BlocBuilder<AppThemeCubit, AppThemeStates>(
        builder: (context, state) {
          return EasyLocalization(
            supportedLocales: const [Locale('en'), Locale('ar')],
            path: 'assets/translations',
            fallbackLocale: const Locale('ar'),
            startLocale: const Locale('ar'),
            child: Builder(
              builder: (context) {
                return ScreenUtilInit(
                  designSize: const Size(360, 690),
                  minTextAdapt: true,
                  splitScreenMode: true,
                  child: MaterialApp.router(
                    routerConfig: RouterHelper.router,
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: state.locale,
                    themeMode: state.themeMode,
                    theme: Theming.lightTheme,
                    darkTheme: Theming.darkTheme,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
