import 'dart:convert';

import 'package:netflixclone/constants/constant.dart';
import 'package:netflixclone/models/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  static const trendingurl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constant.apikey}';

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
}
