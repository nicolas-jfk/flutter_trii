import 'package:flutter/material.dart';
import 'package:flutter_trii/api/movie.dart';
import 'moviedetails.dart';

class PosterMovie extends StatelessWidget {
  Movie peli;

  PosterMovie({required this.peli});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(peli.title),
        trailing: Image.network(peli.getImage()),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MovieDetails(movie: peli)));
        });
  }
}
