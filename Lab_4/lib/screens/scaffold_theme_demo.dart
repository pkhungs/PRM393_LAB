import 'package:flutter/material.dart';

class ScaffoldThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaffold & Theme')),
      body: Center(
        child: Text(
          'Floating Action Button Example',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('FAB Clicked')),
          );
        },
      ),
    );
  }
}
