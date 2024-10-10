// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const defaultFont = GoogleFonts.outfit;

class Typo extends StatelessWidget {
  final String text;
  final Color color;

  const Typo(this.text, {super.key, this.color = Colors.black});

  static Widget Title(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text, style: TitleStyle(color: color).style);
  }

  static Widget Title2(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text, style: Title2Style(color: color).style);
  }

  static Widget Title3(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text, style: Title3Style(color: color).style);
  }

  static Widget Title4(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text, style: Title4Style(color: color).style);
  }

  static Widget Caption(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text.toUpperCase(), style: CaptionStyle(color: color).style);
  }

  static Widget Body2(String text, {Color? color, TextAlign? align}) {
    color ??= Colors.black;

    return Text(
      text,
      style: Body2Style(color: color).style,
      overflow: TextOverflow.visible,
      textAlign: align,
    );
  }

  static Widget BodyBold(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text, style: BodyBoldStyle(color: color).style);
  }

  static Widget Button(String text, {Color? color}) {
    color ??= Colors.black;

    return Text(text.toUpperCase(), style: ButtonFontStyle(color: color).style);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: defaultFont(color: color, fontSize: 16.0),
      overflow: TextOverflow.visible,
    );
  }
}

class TitleStyle {
  final Color color;

  TitleStyle({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 32.0, color: color, fontWeight: FontWeight.bold);
  }
}

class Title2Style {
  final Color color;

  Title2Style({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 28.0, color: color, fontWeight: FontWeight.w700);
  }
}

class Title3Style {
  final Color color;

  Title3Style({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 24.0, color: color, fontWeight: FontWeight.w700);
  }
}

class Title4Style {
  final Color color;

  Title4Style({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 20.0, color: color, fontWeight: FontWeight.w700);
  }
}

class CaptionStyle {
  final Color color;

  CaptionStyle({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 12.0, color: color, fontWeight: FontWeight.bold);
  }
}

class Body2Style {
  final Color color;

  Body2Style({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(fontSize: 14.0, color: color);
  }
}

class BodyBoldStyle {
  final Color color;

  BodyBoldStyle({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 16.0, color: color, fontWeight: FontWeight.w600);
  }
}

class ButtonFontStyle {
  final Color color;

  ButtonFontStyle({this.color = Colors.black87});

  TextStyle get style {
    return defaultFont(
        fontSize: 14.0, color: color, fontWeight: FontWeight.w700);
  }
}
