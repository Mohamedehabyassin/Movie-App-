import 'package:flutter_lab_2/Model/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class MovieDetailsRequest{
  final id;
  MovieDetailsRequest({this.id});

  Future fetchMovie({ide}) async {
    final response =
    await http.get('https://api.themoviedb.org/3/movie/$ide?api_key=6557d01ac95a807a036e5e9e325bb3f0&language=en-US');
    if (response.statusCode == 200) {
      var res = json.decode(response.body);
      Movie movies = Movie.fromJson(res);
      return movies.results;
    } else {
      throw Exception("can't load");
    }
  }

}