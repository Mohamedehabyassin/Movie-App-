import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Data/movie_details_request.dart';

class MovieDetailsProvider extends ChangeNotifier{
  var _movieDetailsRequest = MovieDetailsRequest();
  var movie;

  MovieDetailsProvider(){
    getMovie();
  }

  void getMovie() {
   movie = _movieDetailsRequest.fetchMovie();
          notifyListeners();
  }

}