import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/views/widgets/title_section/title_section.dart';
import 'package:explore_mundo/views/widgets/travel_package/travel_package.dart';
import 'package:flutter/material.dart';

class TravelPackagesSection extends StatelessWidget {
  final TravelDestinationController controller = TravelDestinationController();

  TravelPackagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var packages = controller.bestTravelPackages();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleSection('Pacotes', seeMoreRoute: Routes.travelPackages()),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: packages.map((item) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: TravelPackage(
                    title: item.destination,
                    image: item.image,
                    daily: item.daily,
                    price: item.price,
                    id: item.id,
                  ));
            }).toList(),
          ),
        )
      ],
    );
  }
}
