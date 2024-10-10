import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection(this.title, {super.key, this.seeMoreRoute});

  final String title;
  final Widget? seeMoreRoute;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Typo.Title3(title),
        seeMoreRoute != null
            ? GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => seeMoreRoute!,
                  ),
                ),
                child: Typo.Caption('Ver mais'),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
