import 'package:flutter/material.dart';

class ButtonStyles {
  static const Map<ButtonVariantEnum, ButtonStyleData> styles = {
    ButtonVariantEnum.primary:
        ButtonStyleData(fg: Colors.white, bg: Colors.black87),
    ButtonVariantEnum.ghost:
        ButtonStyleData(fg: Colors.black87, bg: Colors.transparent)
  };
}

class ButtonStyleData {
  const ButtonStyleData({required this.fg, required this.bg});

  final Color fg;
  final Color bg;
}

enum ButtonVariantEnum { primary, ghost }
