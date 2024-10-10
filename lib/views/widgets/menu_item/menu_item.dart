import 'package:explore_mundo/contants/button_styles.dart';
import 'package:explore_mundo/views/widgets/button/button.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.route});

  final String title;
  final IconData icon;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return Button(
      title,
      icon: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(
          icon,
          color: Colors.black87,
        ),
      ),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => route)),
      variant: ButtonVariantEnum.ghost,
      alignment: MainAxisAlignment.start,
    );
  }
}
