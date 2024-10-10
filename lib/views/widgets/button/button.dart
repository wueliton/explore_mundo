import 'package:explore_mundo/contants/button_styles.dart';
import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(this.text,
      {super.key,
      required this.onPressed,
      this.variant = ButtonVariantEnum.primary,
      this.icon,
      this.alignment = MainAxisAlignment.center});

  final String text;
  final void Function()? onPressed;
  final ButtonVariantEnum variant;
  final Widget? icon;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(ButtonStyles.styles[variant]?.bg)),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          icon ?? const SizedBox.shrink(),
          Typo.Button(text, color: ButtonStyles.styles[variant]?.fg)
        ],
      ),
    );
  }
}
