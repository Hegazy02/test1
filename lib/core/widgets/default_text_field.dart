import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/app_theme/app_theme_cubit.dart';
import '../theme/app_colors.dart';
import '../theme/app_styles.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isObscure;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onSuffixIconPressed;
  final TextEditingController? controller;
  final void Function()? onTap;
  final bool? autoFocus;
  final TextInputType? keyboardType;
  final bool? enabled;
  const DefaultTextField(
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
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          filled: true,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.lightGrey,
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: onSuffixIconPressed,
                  icon: Icon(suffixIcon),
                  color: AppColors.defaultGrey,
                )
              : null,
          hintText: hintText,
          hintStyle: getFontStyleIfTheme(
              context, textStyle16Regular.copyWith(color: AppColors.lightGrey)),
          enabledBorder: customBorder(AppColors.lightGrey),
          disabledBorder: customBorder(AppColors.defaultGrey),
          focusedBorder: customBorder(Theme.of(context).primaryColor),
          errorBorder: customBorder(AppColors.darkSaturatedRed),
          focusedErrorBorder: customBorder(AppColors.darkSaturatedRed),
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
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: color));
  }
}
