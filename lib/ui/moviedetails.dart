import 'package:flutter/material.dart';
import 'package:flutter_trii/api/movie.dart';

class MovieDetails extends StatelessWidget {
  @override
  Movie movie;
  MovieDetails({required this.movie}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Image.network(movie.getImage()),
          const Padding(padding: EdgeInsets.only(top: 15)),
          Text(movie.title,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Padding(padding: EdgeInsets.only(top: 15)),
          Text(movie.overview),
        ],
      ),
    );
  }
}
