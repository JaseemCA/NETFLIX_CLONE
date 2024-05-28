import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/apiservice/api.dart';
import 'package:netflixclone/models/movie.dart';
import 'package:netflixclone/widgets/movie_slider.dart';
import 'package:netflixclone/widgets/trending.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<List<Movie>> trendingmovies;

  @override
  void initState() {
    super.initState();
    trendingmovies = Api().getTrendinMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            'assets/Netflix-Logo.png',
            fit: BoxFit.cover,
            height: 120,
            filterQuality: FilterQuality.high,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Trending Movies',
                    style: GoogleFonts.aBeeZee(fontSize: 22)),
                const SizedBox(height: 30),
                SizedBox(
                  child: FutureBuilder(
                      future: trendingmovies,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else if (snapshot.hasData) {
                          // final data = snapshot.data;
                          return  TrendingMovies(snapshot: snapshot);
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      }),
                ),
                const SizedBox(height: 30),
                Text(
                  "Top rated movies",
                  style: GoogleFonts.aBeeZee(fontSize: 22),
                ),
                const SizedBox(height: 30),
                const MovieSlider(),
                const SizedBox(height: 30),
                Text(
                  "Upcoming movies",
                  style: GoogleFonts.aBeeZee(fontSize: 22),
                ),
                const SizedBox(height: 30),
                const MovieSlider(),
              ],
            ),
          ),
        ));
  }
}
