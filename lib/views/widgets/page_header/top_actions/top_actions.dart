import 'package:explore_mundo/views/widgets/icon_circle_button/icon_circle_button.dart';
import 'package:flutter/material.dart';

class TopActions extends StatelessWidget {
  const TopActions({super.key, this.title});

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        IconCircleButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        title ?? const SizedBox.shrink()
      ],
    ));
  }
}
