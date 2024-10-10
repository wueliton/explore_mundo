import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/views/widgets/title_section/title_section.dart';
import 'package:explore_mundo/views/widgets/travel_destination/travel_destionation.dart';
import 'package:flutter/material.dart';

class DestinationsSection extends StatelessWidget {
  final TravelDestinationController controller = TravelDestinationController();

  DestinationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final randomDestinations = controller.randomDestinations();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleSection('Destinos', seeMoreRoute: Routes.destinations()),
        ),
        const SizedBox(
          height: 8.0,
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: randomDestinations.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 140,
                  width: 140,
                  child: DestinationItem(
                    title: randomDestinations[index].destination,
                    image: randomDestinations[index].image,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Routes.details(randomDestinations[index].id),
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
