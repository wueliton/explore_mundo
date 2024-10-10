import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/controllers/travel_destination_controller.dart';
import 'package:explore_mundo/models/travel_destination_item.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<StatefulWidget> createState() => SearchInputState();
}

class SearchInputState extends State<SearchInput> {
  final TravelDestinationController destinyController =
      TravelDestinationController();
  List<TravelDestinationItem> _results = [];

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(viewOnChanged: (search) {
      setState(() {
        _results = destinyController.find(search);
      });
    }, builder: (BuildContext context, SearchController controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SearchBar(
            controller: controller,
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 12.0)),
            onTap: () {
              controller.openView();
              setState(() {
                _results = destinyController.find('');
              });
            },
            onChanged: (search) {
              controller.openView();
              setState(() {
                _results = destinyController.find(search);
              });
            },
            leading: const Icon(
              Icons.search,
              color: Colors.black38,
            ),
            hintText: 'Pesquisar destino',
            hintStyle:
                WidgetStateProperty.all(defaultFont(color: Colors.black54)),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)))),
      );
    }, suggestionsBuilder: (BuildContext context, SearchController controller) {
      return List.generate(_results.length, (int index) {
        return ListTile(
          title: Typo(_results[index].destination),
          onTap: () {
            setState(() {
              controller.closeView('');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Routes.details(_results[index].id),
                ),
              );
            });
          },
        );
      });
    });
  }
}
