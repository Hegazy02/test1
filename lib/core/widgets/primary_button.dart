import 'package:flutter/material.dart';

import '../theme/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final void Function()? onPressed;
  final double? verticalPadding;
  const PrimaryButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textStyle,
      this.buttonColor,
      this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 12),
              backgroundColor: buttonColor ?? Theme.of(context).primaryColor,
            ),
            child: Text(
              text,
              style: textStyle ??
                  getFontStyleIfTheme(context, textStyle20MediumWhite),
            ),
          ),
        ),
      ],
    );
  }
}
