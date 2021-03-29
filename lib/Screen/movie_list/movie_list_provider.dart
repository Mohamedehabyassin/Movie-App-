import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Data/movie_request.dart';
import 'package:flutter_lab_2/Model/movie.dart';

class MovieListProvider extends ChangeNotifier{
  var _movieRequest = MovieRequest();
  List<Result> movies;

  MovieListProvider(){
    getMovies();
  }

  void getMovies() {
    _movieRequest.fetchData().then(
            (list){
          movies = list;
          notifyListeners();
        }
    );
  }

}