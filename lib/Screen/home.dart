import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Data/movie_request.dart';
import 'package:flutter_lab_2/Model/movie.dart';
import 'package:flutter_lab_2/Screen/movie_list/movie_list.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Future<List<Movie>> futureMovies;
  // var _movie = MovieRequest();
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _movie.fetchData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('My Movies')),
      ),
      body: MovieList()
    );
  }
}
