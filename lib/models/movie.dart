class Movie {
  
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterpath;
  String releaseDate;
  double voteaverage;

  Movie({
    
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterpath,
    required this.releaseDate,
    required this.voteaverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      
        title: json['title'] ?? "some title",
        backDropPath: json['backdrop_path'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        posterpath: json['poster_path'],
        releaseDate: json['release_date'],
        voteaverage: json['vote_average'].toDouble());
  }

//   Map<String, dynamic> toJson() => {
// "title":title,
//   };
}
