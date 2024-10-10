import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
    required this.index,
    required this.label,
    required this.description,
    required this.subtitle,
    required this.image,
  });

  final int index;
  final String label;
  final String description;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Typo.Caption(label, color: Colors.white)],
                )),
          ),
          SizedBox(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.9)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Typo.Title3(description, color: Colors.white),
                    Typo.Body2(subtitle, color: Colors.white)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
