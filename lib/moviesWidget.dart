import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_flutter/movie.dart';

class MovieWidget extends StatelessWidget {
  List<Movie> movies;

  MovieWidget({this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            title: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: ClipRRect(
                    child: Image.network(movie.poster),
                    borderRadius:BorderRadius.circular(10),
                  ),
                ),
                Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(movie.title),
                          Text(movie.year),
                        ],
                      )
                    ))
              ],
            ),
          );
        });
  }
}
