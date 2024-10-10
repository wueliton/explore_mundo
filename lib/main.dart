import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/views/routes/modal/menu.dart';
import 'package:explore_mundo/views/sections/destinations_section.dart';
import 'package:explore_mundo/views/sections/travel_packages_section.dart';
import 'package:explore_mundo/views/widgets/header/header.dart';
import 'package:explore_mundo/views/widgets/image_slider.dart';
import 'package:explore_mundo/views/widgets/search_input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';

  runApp(MaterialApp(home: StatelessWidgetExemplo()));
}

class StatelessWidgetExemplo extends StatelessWidget {
  final TravelDestinationController controller = TravelDestinationController();

  StatelessWidgetExemplo({super.key});

  @override
  Widget build(BuildContext context) {
    final items = controller.fetchItems();

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(
                    onMenuPressed: () {
                      showCupertinoModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) => const MenuModal());
                    },
                  ),
                  const SearchInput(),
                  const SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 400),
                    child: CarouselView(
                      itemExtent: 330,
                      shrinkExtent: 320,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      onTap: (index) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Routes.details(items[index].id),
                          ),
                        );
                      },
                      children: List.generate(
                        items.length,
                        (int index) {
                          return CarouselItem(
                              index: index,
                              label: items[index].destination,
                              description: items[index].description,
                              subtitle: items[index].subtitle,
                              image: items[index].image);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DestinationsSection(),
                  const SizedBox(
                    height: 40,
                  ),
                  TravelPackagesSection(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
