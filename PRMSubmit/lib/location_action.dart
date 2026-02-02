import 'package:flutter/material.dart';

class LocationActions extends StatelessWidget {
  const LocationActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ActionButton(icon: Icons.call, label: "Call"),
        ActionButton(icon: Icons.near_me, label: "Route"),
        ActionButton(icon: Icons.share, label: "Share"),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 28),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}

class LocationDescription extends StatelessWidget {
  final String description;

  const LocationDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(description, style: const TextStyle(fontSize: 16));
  }
}
