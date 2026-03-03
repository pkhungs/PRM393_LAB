import '../models/movie.dart';

final List<Movie> allMovies = [
  Movie(
    title: "Inception",
    year: 2010,
    genres: ["Action", "Sci-Fi"],
    posterUrl:
    "https://m.media-amazon.com/images/I/71thFiIUSpL._AC_UF894,1000_QL80_.jpg",
    rating: 8.8,
  ),
  Movie(
    title: "Interstellar",
    year: 2014,
    genres: ["Drama", "Sci-Fi"],
    posterUrl:
    "https://m.media-amazon.com/images/I/71JC2qvPx5L._AC_UF894,1000_QL80_.jpg",
    rating: 8.6,
  ),
  Movie(
    title: "The Dark Knight",
    year: 2008,
    genres: ["Action", "Drama"],
    posterUrl:
    "https://images-na.ssl-images-amazon.com/images/I/81IfoBox2TL.jpg",
    rating: 9.0,
  ),
  Movie(
    title: "The Hangover",
    year: 2009,
    genres: ["Comedy"],
    posterUrl:
    "https://i.etsystatic.com/13325275/r/il/f6a653/6591560441/il_fullxfull.6591560441_4mkv.jpg",
    rating: 7.7,
  ),
];