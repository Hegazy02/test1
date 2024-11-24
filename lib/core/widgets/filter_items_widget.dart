import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubits/app_theme/app_theme_cubit.dart';
import '../theme/app_colors.dart';
import '../theme/app_styles.dart';

class FilterItemsWidget extends StatelessWidget {
  final Function(int index) selectFilter;
  final List<String> filters;
  final int selectedFilterIndex;
  const FilterItemsWidget(
      {super.key,
      required this.selectFilter,
      required this.filters,
      required this.selectedFilterIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  selectFilter(index);
                },
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: index == selectedFilterIndex
                          ? AppColors.primaryColor
                          : context.read<AppThemeCubit>().state.themeMode ==
                                  ThemeMode.dark
                              ? Colors.black
                              : Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Text(filters[index].tr(),
                        style: getFontStyleIfTheme(
                          context,
                          textStyle12Bold.copyWith(
                              color: index == selectedFilterIndex
                                  ? Colors.white
                                  : AppColors.primaryColor),
                        ))),
              ),
          separatorBuilder: (context, index) => SizedBox(width: 8.w),
          itemCount: filters.length),
    );
  }
}
