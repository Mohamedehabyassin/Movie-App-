import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Screen/movie_details_widget.dart';
import 'package:flutter_lab_2/Screen/movie_list_details/movie_details_provider.dart';
import 'package:provider/provider.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({this.id});

  final id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.red,),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      body: ChangeNotifierProvider<MovieDetailsProvider>(
        create: (context) => MovieDetailsProvider(id: this.id),
        child: Consumer<MovieDetailsProvider>(
          builder: (ctx, movieDetailsProvider, _) {
            return (movieDetailsProvider.movie != null)
                ? MovieDetailsWidget(
                    movie: movieDetailsProvider.movie,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
