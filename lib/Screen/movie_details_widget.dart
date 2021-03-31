import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Model/movie_details.dart';

class MovieDetailsWidget extends StatelessWidget {
  MovieDetailsWidget({this.movie});

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/${movie.backdropPath}',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(movie.title),),

          ],)
    );
  }
}
