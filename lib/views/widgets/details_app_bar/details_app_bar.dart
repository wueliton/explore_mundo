import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/views/widgets/icon_circle_button/icon_circle_button.dart';
import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 100.0,
      floating: true,
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      surfaceTintColor: const Color.fromARGB(255, 250, 250, 250),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Typo.Title3(title),
      ),
      leading: Container(
        padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
        child: IconCircleButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
