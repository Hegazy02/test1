import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../cubits/app_theme/app_theme_cubit.dart';
import '../theme/app_colors.dart';
import '../theme/app_styles.dart';

class GreyTextField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isObscure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function()? onSuffixIconPressed;
  final TextEditingController? controller;
  final void Function()? onTap;
  final bool? autoFocus;
  final TextInputType? keyboardType;
  final bool? enabled;
  const GreyTextField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.validator,
      this.isObscure,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.autoFocus,
      this.onTap,
      this.onSuffixIconPressed,
      this.keyboardType,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        enabled: enabled,
        onTap: onTap,
        canRequestFocus: autoFocus == null ? true : autoFocus!,
        validator: validator,
        controller: controller,
        obscureText: isObscure ?? false,
        keyboardType: keyboardType,
        cursorColor:
            context.read<AppThemeCubit>().state.themeMode == ThemeMode.dark
                ? AppColors.secondaryColor
                : AppColors.primaryColor,
        decoration: InputDecoration(
          fillColor: AppColors.unicornGrey,
          prefixIconConstraints:
              const BoxConstraints(maxWidth: 100, maxHeight: 100),
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: prefixIcon ??
                SvgPicture.asset(
                  "assets/svgs/search-normal.svg",
                  width: 26.sp,
                  height: 26.sp,
                ),
          ),
          suffixIcon: suffixIcon ??
              IconButton(
                onPressed: onSuffixIconPressed,
                icon: SvgPicture.asset("assets/svgs/filter-search.svg"),
              ),
          hintText: hintText,
          hintStyle: getFontStyleIfTheme(context,
              textStyle16Regular.copyWith(color: AppColors.defaultGrey),
              fontDarkModeColor: Colors.black),
          enabledBorder: customBorder(AppColors.unicornGrey),
          disabledBorder: customBorder(AppColors.unicornGrey),
          focusedBorder: customBorder(AppColors.unicornGrey),
          errorBorder: customBorder(AppColors.unicornGrey),
          focusedErrorBorder: customBorder(AppColors.unicornGrey),
        ),
        onChanged: onChanged,
        style: getFontStyleIfTheme(
            context,
            textStyle14Regular.copyWith(
                color: context.read<AppThemeCubit>().state.themeMode ==
                        ThemeMode.dark
                    ? AppColors.lightGrey
                    : AppColors.defaultGrey)),
      ),
    );
  }

  OutlineInputBorder customBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color));
  }
}
