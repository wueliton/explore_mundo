import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/models/travel_destination_item.dart';
import 'package:explore_mundo/views/routes/modal/book.dart';
import 'package:explore_mundo/views/widgets/button/button.dart';
import 'package:explore_mundo/views/widgets/icon_circle_button/icon_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.id});

  final String id;
  final TravelDestinationController controller = TravelDestinationController();

  @override
  Widget build(BuildContext context) {
    final TravelDestinationItem destination = controller.getItem(id);
    var f = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    var formattedPrice = f.format(destination.price);
    var reviews = destination.note;
    var dailies = destination.daily;

    return Scaffold(
      backgroundColor: Colors.white,
      persistentFooterButtons: [
        Button('Reservar', onPressed: () {
          showCupertinoModalBottomSheet(
              context: context,
              builder: (BuildContext context) => const BookModal());
        })
      ],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: true,
            pinned: true,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(120.0), child: Text('')),
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
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(destination.image),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.9)
                  ], stops: const [
                    0.6,
                    1.0
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Typo.Title(destination.destination, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Typo.Title3(formattedPrice),
                          Typo.Body2('por pessoa')
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 16.0,
                            color: Colors.black87,
                          ),
                          Typo('$reviews', color: Colors.black87)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 68.0,
                        width: 68.0,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.09),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_today),
                            Typo.Body2('$dailies dias')
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Typo.Title4('Pacote'),
                  Column(
                    children: (destination.items ?? [])
                        .map((item) => Row(
                              children: [
                                const Icon(
                                  Icons.check,
                                  size: 16.0,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Typo.Body2(item)
                              ],
                            ))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Typo.Title4('Sobre'),
                  Typo(destination.description)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
