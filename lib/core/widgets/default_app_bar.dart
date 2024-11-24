import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';

defaultAppBar({String? title, required BuildContext context}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    forceMaterialTransparency: true,
    title: title != null
        ? Text(
            title.tr(),
            style: getFontStyleIfTheme(context, textStyle16Bold,
                fontDarkModeColor: AppColors.secondaryColor),
          )
        : null,
    centerTitle: true,
    leading: context.canPop()
        ? IconButton(
            onPressed: context.pop,
            icon: const Icon(
              Icons.arrow_back_ios,
            ))
        : null,
  );
}
