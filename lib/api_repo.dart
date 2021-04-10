import 'dart:convert';

import 'movie.dart';
import 'package:http/http.dart' as http;

Future<List<Movie>> fetchAllMovies() async {
  final response = await http
      .get("http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa");
  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    Iterable list = result["Search"];
    return list.map((movie) => Movie.fromJson(movie)).toList();
  } else {
    throw Exception("Failed to load");
  }
}
