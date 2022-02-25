import 'package:flutter/material.dart';
import 'package:flutter_trii/api/movie.dart';
import 'moviedetails.dart';

class BigPosterMovie extends StatelessWidget {
  Movie peli;

  BigPosterMovie({required this.peli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MovieDetails(movie: peli)));
      },
      child: Image.network(peli.getImage(), fit: BoxFit.fill),
    );
  }
}
