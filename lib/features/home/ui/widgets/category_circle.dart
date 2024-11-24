import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';

class CategoryCircle extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const CategoryCircle({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: const BoxDecoration(),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              backgroundColor: AppColors.lightGrey,
              radius: 30.r,
              backgroundImage: CachedNetworkImageProvider(image),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title.tr(),
              style: getFontStyleIfTheme(context,
                  textStyle14Medium.copyWith(fontWeight: FontWeight.w600)),
            ),
          ])),
    );
  }
}
