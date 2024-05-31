import 'dart:convert';
import 'package:netflixclone/constants/constant.dart';
import 'package:netflixclone/models/detailsmodel.dart';
import 'package:netflixclone/models/movie.dart';
import 'package:http/http.dart' as http;
import 'package:netflixclone/models/searchmovie.dart';

late String endPont;

class Api {
  static const trendingurl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constant.apikey}';

  static const topRatedurl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constant.apikey}';

  static const upComingdurl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constant.apikey}';

  static const baseUrl = "https://api.themoviedb.org/3/";
  
  
  Future<List<Movie>> getTrendinMovie() async {
    final response = await http.get(Uri.parse(trendingurl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      //  print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('something happed');
    }
  }

  Future<List<Movie>> getTopRatedMovie() async {
    final response = await http.get(Uri.parse(topRatedurl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      //  print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Faile to load Toprated Movies');
    }
  }

  Future<List<Movie>> getUpComingMovie() async {
    final response = await http.get(Uri.parse(upComingdurl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      //  print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Faile to load Upcoming Movies');
    }
  }

  Future<SearchModel> getSearchedMovies(String searchText) async {
    endPont = "search/movie?query=$searchText";
    final url = "$baseUrl$endPont";
    // print(url);
    final response = await http.get(Uri.parse(url), headers: {
      'Authorization':
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3NTAyYjhjMDMxYzc5NzkwZmU1YzBiNGY5NGZkNzcwZCIsInN1YiI6IjYzMmMxYjAyYmE0ODAyMDA4MTcyNjM5NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.N1SoB26LWgsA33c-5X0DT5haVOD4CfWfRhwpDu9eGkc"
    });

    if (response.statusCode == 200) {
      return SearchModel.fromJson(jsonDecode(response.body));
    }

    throw Exception("Failed to Search movies");
  }

 Future<MovieDetatilsModel> getMovieDetails(int movieId) async {
    endPont = "movie/$movieId";
    final url = "$baseUrl$endPont${Constant.apikey}";
    // print(url);
    final response = await http.get(Uri.parse(url), );

    if (response.statusCode == 200) {
      return MovieDetatilsModel.fromJson(jsonDecode(response.body));
    }

    throw Exception("Failed to movie details");
  }



}
