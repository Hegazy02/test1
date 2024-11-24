import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../core/routes/routes_names.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../translations/locale_keys.g.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.searchProductsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(24)),
        child: Row(
          children: [
            SvgPicture.asset("assets/svgs/search-normal.svg"),
            SizedBox(
              width: 8.w,
            ),
            Text(
              LocaleKeys.search.tr(),
              style: getFontStyleIfTheme(context,
                  textStyle12Regular.copyWith(color: AppColors.unicornGrey)),
            ),
            const Spacer(),
            SvgPicture.asset("assets/svgs/filter-search.svg"),
          ],
        ),
      ),
    );
  }
}
