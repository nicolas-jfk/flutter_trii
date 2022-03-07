import 'dart:convert';
import 'package:http/http.dart' as http;
import 'movie.dart';
import 'movies.dart';

class DBinfo {
  Future<List<Movie>> getNowPlaying() async {
    var APIUrl =
        'https://api.themoviedb.org/3/movie/now_playing?api_key=1c041d1c64d93d2e9a955626fefec933';
    final respuesta = await http.get(Uri.parse(APIUrl));

    if (respuesta.statusCode == 200) {
      final respuestaJson = json.decode(respuesta.body);
      final peliculasNowPlaying = Movies.fromJsonList(respuestaJson['results']);
      // picMovies = peliculasNowPlaying;
      return peliculasNowPlaying;
    }
    return <Movie>[];
  }
}
