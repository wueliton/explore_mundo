import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.onMenuPressed});

  final void Function()? onMenuPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          IconButton(
              onPressed: onMenuPressed, icon: const Icon(Icons.menu_sharp))
        ],
      ),
    );
  }
}
