import 'package:flutter/material.dart';
import '../data/sample_movies.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';

class GenreScreen extends StatefulWidget {
  const GenreScreen({super.key});

  @override
  State<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  String searchQuery = "";
  String selectedSort = "A-Z";

  final List<String> genres = ["Action", "Drama", "Comedy", "Sci-Fi"];

  final Set<String> selectedGenres = {};

  @override
  Widget build(BuildContext context) {
    List<Movie> visibleMovies = allMovies.where((movie) {
      final matchesSearch = movie.title.toLowerCase().contains(
        searchQuery.toLowerCase(),
      );

      final matchesGenre =
          selectedGenres.isEmpty ||
          movie.genres.any((g) => selectedGenres.contains(g));

      return matchesSearch && matchesGenre;
    }).toList();

    switch (selectedSort) {
      case "A-Z":
        visibleMovies.sort((a, b) => a.title.compareTo(b.title));
        break;
      case "Z-A":
        visibleMovies.sort((a, b) => b.title.compareTo(a.title));
        break;
      case "Year":
        visibleMovies.sort((a, b) => b.year.compareTo(a.year));
        break;
      case "Rating":
        visibleMovies.sort((a, b) => b.rating.compareTo(a.rating));
        break;
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find a Movie",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Search...",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: genres.map((genre) {
                  final isSelected = selectedGenres.contains(genre);

                  return ChoiceChip(
                    label: Text(genre),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          selectedGenres.add(genre);
                        } else {
                          selectedGenres.remove(genre);
                        }
                      });
                    },
                  );
                }).toList(),
              ),

              const SizedBox(height: 16),
              DropdownButton<String>(
                value: selectedSort,
                items: ["A-Z", "Z-A", "Year", "Rating"]
                    .map(
                      (sort) => DropdownMenuItem(
                        value: sort,
                        child: Text("Sort: $sort"),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedSort = value!;
                  });
                },
              ),

              const SizedBox(height: 16),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 800) {
                      return ListView.builder(
                        itemCount: visibleMovies.length,
                        itemBuilder: (context, index) {
                          return MovieCard(movie: visibleMovies[index]);
                        },
                      );
                    } else {
                      return GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        children: visibleMovies
                            .map((movie) => MovieCard(movie: movie))
                            .toList(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
