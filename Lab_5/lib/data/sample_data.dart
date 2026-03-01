import '../models/movie.dart';

final List<Movie> movies = [
  Movie(
    id: '1',
    title: 'Inception',
    posterUrl:
    'https://m.media-amazon.com/images/I/71thFiIUSpL._AC_UF894,1000_QL80_.jpg',
    overview:
    'A skilled thief is offered a chance to erase his criminal history by planting an idea into a target’s subconscious.',
    genres: ['Action', 'Sci-Fi', 'Thriller'],
    rating: 8.8,
    trailers: [
      Trailer(title: 'Official Trailer 1', url: 'https://youtube.com'),
      Trailer(title: 'Official Trailer 2', url: 'https://youtube.com'),
    ],
  ),
  Movie(
    id: '2',
    title: 'Interstellar',
    posterUrl:
    'https://m.media-amazon.com/images/I/71JC2qvPx5L._AC_UF894,1000_QL80_.jpg',
    overview:
    'A team of explorers travel through a wormhole in space in an attempt to ensure humanity’s survival.',
    genres: ['Adventure', 'Drama', 'Sci-Fi'],
    rating: 8.6,
    trailers: [
      Trailer(title: 'Teaser', url: 'https://youtube.com'),
    ],
  ),
];