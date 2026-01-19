import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  final List<String> movies = [
    'Inception',
    'Interstellar',
    'Avatar',
    'The Dark Knight',
    'Titanic',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Basics')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Popular Movies',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded( // Fix ListView inside Column
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Card(
                    child: ListTile(
                      title: Text(movies[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
