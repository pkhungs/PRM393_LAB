import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Core Widgets')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Flutter Core Widgets',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 16),
            Icon(Icons.favorite, color: Colors.red, size: 48),
            SizedBox(height: 16),
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-bg-opaque-2x.png',
              height: 120,
            ),
            SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('John Doe'),
                subtitle: Text('Flutter Developer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
