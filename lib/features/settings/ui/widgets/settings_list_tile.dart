import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_styles.dart';

class SettingsListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;
  final Widget? trailing;
  const SettingsListTile(
      {super.key,
      required this.title,
      required this.icon,
      this.onTap,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title.tr(),
        style: getFontStyleIfTheme(context, textStyle14Regular),
      ),
      trailing: Icon(icon, color: Theme.of(context).primaryColor),
      leading: trailing ??
          Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 22.sp,
          ),
    );
  }
}
