import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../translations/locale_keys.g.dart';
import '../theme/app_styles.dart';

class ThereIsNoDataTextWidget extends StatelessWidget {
  final String text;
  const ThereIsNoDataTextWidget(
      {super.key, this.text = LocaleKeys.there_is_no_data});

  @override
  Widget build(BuildContext context) {
    return Text(text.tr(),
        style: getFontStyleIfTheme(context, textStyle14Regular));
  }
}
