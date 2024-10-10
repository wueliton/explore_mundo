class TravelDestinationItem {
  final String id;
  final String destination;
  final String description;
  final String subtitle;
  final String image;
  final double price;
  final double note;
  final int daily;
  final List<String>? items;

  TravelDestinationItem({
    required this.id,
    required this.destination,
    required this.description,
    required this.image,
    required this.subtitle,
    required this.note,
    required this.price,
    required this.daily,
    this.items,
  });
}
