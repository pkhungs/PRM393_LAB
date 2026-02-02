class Location {
  final int id;
  final String name;
  final String address;
  final String description;
  final int count;
  int star;
  final String imageUrl;

  Location({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.count,
    required this.star,
    required this.imageUrl,
  });
}