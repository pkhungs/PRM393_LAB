import 'package:flutter/material.dart';

class LocationImage extends StatelessWidget {
  final String imageUrl;

  const LocationImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 220,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
