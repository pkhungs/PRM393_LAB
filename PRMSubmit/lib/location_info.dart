import 'package:flutter/material.dart';
import 'location.dart';

class LocationInfo extends StatelessWidget {
  final Location location;
  final int star;
  final VoidCallback onStarTap;

  const LocationInfo({
    super.key,
    required this.location,
    required this.star,
    required this.onStarTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                location.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: onStarTap,
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange),
                  const SizedBox(width: 4),
                  Text(star.toString()),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(location.address, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
