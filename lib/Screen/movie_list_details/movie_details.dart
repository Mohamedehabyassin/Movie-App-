import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Data/movie_details_request.dart';
class MovieDetails extends StatefulWidget {
  MovieDetails({this.id});
  final id ;

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  var _req = MovieDetailsRequest();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _req.fetchMovie(ide:this.widget.id);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Hi"),
      ),
    );
  }
}
