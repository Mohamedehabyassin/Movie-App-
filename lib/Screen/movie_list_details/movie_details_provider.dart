import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Data/movie_details_request.dart';
import 'package:flutter_lab_2/Model/movie_details.dart';

class MovieDetailsProvider extends ChangeNotifier {
  var _movieDetailsRequest = MovieDetailsRequest();
  MovieDetails movie;
  final id;
  MovieDetailsProvider({this.id}) {
    getMovie();
  }
  void getMovie() {
    _movieDetailsRequest.fetchMovie(this.id).then((value) {
      movie = value;
      notifyListeners();
    });
  }
}
