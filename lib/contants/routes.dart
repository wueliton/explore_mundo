import 'package:explore_mundo/views/routes/destinations.dart';
import 'package:explore_mundo/views/routes/details.dart';
import 'package:explore_mundo/views/routes/contact.dart';
import 'package:explore_mundo/views/routes/travel_packages.dart';

class Routes {
  static DetailsScreen Function(String id) details =
      (String id) => DetailsScreen(id: id);
  static DestinationsScreen Function() destinations =
      () => DestinationsScreen();
  static TravelPackagesScreen Function() travelPackages =
      () => TravelPackagesScreen();
  static ContactScreen Function() about = () => const ContactScreen();
}
