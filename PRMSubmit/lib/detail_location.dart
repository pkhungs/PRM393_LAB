import 'package:flutter/material.dart';
import 'location.dart';
import 'location_image.dart';
import 'location_info.dart';
import 'location_action.dart';

class LocationDetailPage extends StatefulWidget {
  final Location location;

  const LocationDetailPage({super.key, required this.location});

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  late int star;

  @override
  void initState() {
    super.initState();
    star = widget.location.star;
  }

  void increaseStar() {
    setState(() {
      star++;
      widget.location.star = star;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Location Detail"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocationImage(imageUrl: widget.location.imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocationInfo(
                    location: widget.location,
                    star: star,
                    onStarTap: increaseStar,
                  ),
                  const SizedBox(height: 16),
                  const LocationActions(),
                  const SizedBox(height: 16),
                  LocationDescription(description: widget.location.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
