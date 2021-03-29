import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Screen/home.dart';
import 'package:flutter_lab_2/Screen/movie_list/movie_list.dart';
import 'package:flutter_lab_2/Screen/movie_list_details/movie_details.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/movie': (context) => MovieList(),
        '/details': (context) => MovieDetails()
      },

      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
       // primarySwatch: Colors.black,
      ),
      home: MyHomePage()
    );
  }
}
