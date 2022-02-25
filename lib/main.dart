import 'package:flutter/material.dart';
import 'package:flutter_trii/ui/login.dart';
import 'package:flutter_trii/ui/postermovie.dart';
import 'package:flutter_trii/ui/spinnerwidget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api/movie.dart';
import 'api/movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LogIn(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Movie> movies;
  String query = '';
  List<Movie> picMovies = [];
  Future<List<Movie>> getNowPlaying() async {
    var APIUrl =
        'https://api.themoviedb.org/3/movie/now_playing?api_key=1c041d1c64d93d2e9a955626fefec933';
    final respuesta = await http.get(Uri.parse(APIUrl));

    if (respuesta.statusCode == 200) {
      final respuestaJson = json.decode(respuesta.body);
      final peliculasNowPlaying = Movies.fromJsonList(respuestaJson['results']);
      picMovies = peliculasNowPlaying;
      return peliculasNowPlaying;
    }
    return <Movie>[];
  }

  @override
  void initState() {
    getNowPlaying();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: FutureBuilder(
        future: getNowPlaying(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        var pelicula = snapshot.data![index];

                        return PosterMovie(peli: pelicula);
                      }),
                ),
              ],
            );
          } else {
            return SpinnerWidget();
          }
        },
      ),
    );
  }
}
