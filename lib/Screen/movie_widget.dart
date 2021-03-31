import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Model/movie.dart';
import 'package:flutter_lab_2/Screen/movie_list_details/movie_details.dart';

class MovieWidget extends StatelessWidget {
  MovieWidget({this.movie});
  final Result movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieDetails(id: movie.id)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width / 3,
            child: Image.network(
              'https://image.tmdb.org/t/p/w500/${movie.backdropPath}',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Expanded(
              // flex: 2,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                movie.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('release in ${movie.releaseDate}'),
              Wrap(
                  children: movie.genreIds
                      .map((e) => Chip(
                            label: Text('${e}'),
                          ))
                      .toList()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '${movie.voteAverage}',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
