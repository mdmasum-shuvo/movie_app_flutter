import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_app_flutter/movie.dart';
import 'package:movie_app_flutter/moviesWidget.dart';

import 'api_repo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  App createState() => App();
}

class App extends State<MyApp> {
  List<Movie> _movies=new List<Movie>();
  @override
  void initState() {
    super.initState();
    populateMoviesData();
  }
  void populateMoviesData() async {
    final movies= await fetchAllMovies();
    setState(() {
      _movies=movies;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
        ),
        body: MovieWidget(movies:_movies),
      ),

    );
  }

}
