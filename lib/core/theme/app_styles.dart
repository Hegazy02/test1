import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubits/app_theme/app_theme_cubit.dart';
import 'app_colors.dart';

TextStyle textStyle12Regular = TextStyle(
  fontSize: 12.sp,
  color: Colors.black,
);
TextStyle textStyle12Bold = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

TextStyle textStyle14Regular = TextStyle(
  fontSize: 14.sp,
  color: AppColors.primaryColor,
);
TextStyle textStyle14Medium = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: AppColors.primaryColor,
);
TextStyle textStyle14ExtraBold = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w800,
  color: AppColors.primaryColor,
);

TextStyle textStyle20MediumWhite = TextStyle(
  fontSize: 20.sp,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
TextStyle textStyle16Regular = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: AppColors.primaryColor,
);
TextStyle textStyle16Bold = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.bold,
  color: AppColors.primaryColor,
);
getFontStyleIfTheme(BuildContext context, TextStyle textStyle,
    {Color? fontDarkModeColor}) {
  if (context.watch<AppThemeCubit>().state.themeMode == ThemeMode.dark) {
    return textStyle.copyWith(color: fontDarkModeColor ?? Colors.white);
  } else {
    return textStyle;
  }
}
