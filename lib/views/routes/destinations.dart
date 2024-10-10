import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/views/widgets/details_app_bar/details_app_bar.dart';
import 'package:explore_mundo/views/widgets/travel_destination/travel_destionation.dart';
import 'package:flutter/material.dart';

class DestinationsScreen extends StatelessWidget {
  final TravelDestinationController controller = TravelDestinationController();

  DestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _items = controller.allItems();

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const DetailsAppBar(title: 'Destinos'),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return DestinationItem(
                        title: _items[index].destination,
                        image: _items[index].image,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Routes.details(_items[index].id),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
