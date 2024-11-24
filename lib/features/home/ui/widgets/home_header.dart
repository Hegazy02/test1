import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/cubits/app_theme/app_theme_cubit.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../../../core/helpers/user_data_helper.dart';
import '../../../../core/widgets/default_profile_picture_avatar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            UserDataHelper.userModel == null ||
                    UserDataHelper.userModel!.avatar.isEmpty
                ? DefaultProfilePictureAvatar(
                    size: 40.sp,
                  )
                : CircleAvatar(
                    radius: 40.sp,
                    backgroundImage: CachedNetworkImageProvider(
                        UserDataHelper.userModel!.avatar),
                  ),
            const SizedBox(
              width: 8,
            ),
            Column(
              children: [
                Text(
                  LocaleKeys.hello.tr(),
                  style: getFontStyleIfTheme(
                      context,
                      textStyle12Regular.copyWith(
                          color: AppColors.defaultGrey)),
                ),
                Text(
                  // UserDataHelper.userModel!.name,
                  "Test",
                  style: getFontStyleIfTheme(context, textStyle14ExtraBold),
                ),
              ],
            ),
            const Spacer(),
            IconButton.filled(
              iconSize: 24.sp,
              style: IconButton.styleFrom(backgroundColor: AppColors.lightGrey),
              icon: const Icon(Icons.notifications_none_rounded),
              color: context.read<AppThemeCubit>().state.themeMode ==
                      ThemeMode.dark
                  ? Colors.black
                  : null,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
