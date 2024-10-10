import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input(this.label, {super.key, this.prefixIcon});

  final String label;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            prefixIcon: prefixIcon,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            hintText: label,
            hintStyle: defaultFont(color: Colors.black54)),
      ),
    );
  }
}
