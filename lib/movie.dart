class Movie {
  final String imdbId;
  final String year;
  final String title;
  final String poster;

  Movie({this.imdbId, this.year, this.title, this.poster});


  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        imdbId: json["imdbID"],
        poster: json["Poster"],
        title: json["Title"],
        year: json["Year"]
    );
  }

}