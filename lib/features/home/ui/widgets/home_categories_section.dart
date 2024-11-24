import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_styles.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../logic/home_cubit.dart';
import 'category_circle.dart';

class HomeCategoriessSection extends StatelessWidget {
  final HomeCubit cubit;
  const HomeCategoriessSection({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.categories.tr(),
          style: getFontStyleIfTheme(context,
              textStyle16Regular.copyWith(fontWeight: FontWeight.w600)),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 100.w,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: cubit.categories.length,
            itemBuilder: (context, index) {
              return CategoryCircle(
                title: cubit.categories[index].title,
                image: cubit.categories[index].image,
                onTap: () {
                  // context.pushNamed(cubit.categories[index].route);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 16,
              );
            },
          ),
        )
      ],
    );
  }
}
