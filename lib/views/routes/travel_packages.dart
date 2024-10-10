import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/views/widgets/details_app_bar/details_app_bar.dart';
import 'package:explore_mundo/views/widgets/travel_package/travel_package.dart';
import 'package:flutter/material.dart';

class TravelPackagesScreen extends StatelessWidget {
  final TravelDestinationController controller = TravelDestinationController();

  TravelPackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = controller.travelPackages();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DetailsAppBar(title: 'Pacotes'),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: items.map((item) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TravelPackage(
                        title: item.destination,
                        image: item.image,
                        daily: item.daily,
                        price: item.price,
                        id: item.id,
                      ));
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
