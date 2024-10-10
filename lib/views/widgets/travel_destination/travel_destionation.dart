import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';

class DestinationItem extends StatelessWidget {
  const DestinationItem(
      {super.key, required this.title, required this.image, this.onTap});

  final String title;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      splashColor: Colors.black.withOpacity(0.1),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16.0)),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0)
              ], stops: const [
                0.1,
                0.7
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Typo(
            title,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
