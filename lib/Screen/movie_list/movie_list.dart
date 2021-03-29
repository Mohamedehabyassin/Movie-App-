import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Screen/movie_list/movie_list_provider.dart';
import 'package:flutter_lab_2/Screen/movie_widget.dart';
import 'package:provider/provider.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieListProvider>(
      create: (context) => MovieListProvider(),
      child: Consumer<MovieListProvider>(
        builder: (buildContext, movieListProvider, _) {
          return (movieListProvider.movies != null)
              ? ListView.builder(
                  itemCount: movieListProvider.movies.length,
                  itemBuilder: (ctx, index) {
                    final movie = movieListProvider.movies[index];
                    return MovieWidget(movie: movie);
                  })
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
