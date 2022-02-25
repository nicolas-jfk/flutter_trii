import 'movie.dart';

class Movies {
  Movies();

  static List<Movie> fromJsonList(List<dynamic> jsonList) {
    List<Movie> listaPeiculas = [];

    if (jsonList != null) {
      for (var pelicula in jsonList) {
        final movie = Movie.fromJson(pelicula);
        listaPeiculas.add(movie);
      }
    }
    return listaPeiculas;
  }
}
