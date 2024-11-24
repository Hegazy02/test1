import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_styles.dart';
import '../../../translations/locale_keys.g.dart';
import '../logic/settings_cubit.dart';
import '../logic/settings_state.dart';
import 'widgets/settings_list_tile.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late final SettingsCubit cubit;
  @override
  void initState() {
    cubit = context.read<SettingsCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Column(
          children: [
            Align(
              alignment: Directionality.of(context) == TextDirection.ltr
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Text(LocaleKeys.settings.tr(),
                  style: getFontStyleIfTheme(context, textStyle16Bold)),
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsListTile(
                title: LocaleKeys.language,
                icon: Icons.language_outlined,
                trailing: DropdownButton(
                  style: getFontStyleIfTheme(context, textStyle14Medium),
                  value: cubit.locale.languageCode,
                  underline: const SizedBox.shrink(),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(LocaleKeys.english.tr()),
                    ),
                    DropdownMenuItem(
                      value: 'ar',
                      child: Text(LocaleKeys.arabic.tr()),
                    ),
                  ],
                  onChanged: (value) {
                    cubit.changeLanguage(value!, context);
                  },
                )),
            SettingsListTile(
                title: LocaleKeys.dark_mode,
                icon: Icons.dark_mode_outlined,
                trailing: Switch.adaptive(
                    value: cubit.isDarkMode, onChanged: cubit.toggleTheme)),
          ],
        );
      },
    );
  }
}
