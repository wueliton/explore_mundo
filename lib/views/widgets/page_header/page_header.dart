import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/views/widgets/page_header/top_actions/top_actions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageHeader extends SliverPersistentHeaderDelegate {
  PageHeader(
      {required this.minExtend,
      required this.maxExtend,
      required this.title,
      required this.image,
      required this.note,
      required this.price});

  final double minExtend;
  final double maxExtend;
  final String title;
  final String image;
  final double price;
  final double note;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var f = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    var formattedPrice = f.format(price);

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image)))),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.9)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1.0])),
        ),
        const Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TopActions(),
            )),
        Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 36.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Typo.Title(title, color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Typo(
                      '$formattedPrice/Pacote',
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Typo(
                          '$note',
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 20,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
            )
          ],
        )
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  double get maxExtent => maxExtend;

  @override
  double get minExtent => minExtend;
}
