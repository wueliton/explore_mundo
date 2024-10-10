import 'package:flutter/material.dart';

class IconCircleButton extends StatelessWidget {
  const IconCircleButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      padding: const EdgeInsets.all(8.0),
      constraints: const BoxConstraints(),
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0))),
          backgroundColor:
              WidgetStatePropertyAll(Colors.black.withOpacity(0.3))),
    );
  }
}
