import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TravelPackage extends StatelessWidget {
  const TravelPackage(
      {super.key,
      required this.title,
      required this.image,
      required this.daily,
      required this.price,
      required this.id});

  final String title;
  final String image;
  final int daily;
  final double price;
  final String id;

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    var formattedPrice = f.format(price);

    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Routes.details(id))),
      child: Ink(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 120,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Typo.BodyBold(title),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 12.0,
                            color: Colors.black54,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Typo.Body2('$daily diárias', color: Colors.black54)
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Typo.Body2(' por pessoa'),
                      Typo.Title4(formattedPrice),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
