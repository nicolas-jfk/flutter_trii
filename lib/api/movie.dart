class Movie {
  late String title;
  late String poster_path;
  late String overview;

  Movie(title, poster_path) {
    this.title = title;
    this.poster_path = poster_path;
    this.overview;
  }

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    poster_path = json['poster_path'];
    overview = json['overview'];
  }

  String getImage() {
    var im = "https://image.tmdb.org/t/p/w500" + poster_path;
    return im;
  }
}
