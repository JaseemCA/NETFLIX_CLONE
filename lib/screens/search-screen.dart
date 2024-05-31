import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/apiservice/api.dart';
import 'package:netflixclone/models/movie.dart';
import 'package:netflixclone/models/searchmovie.dart';
import 'package:netflixclone/widgets/topsearched.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  Api apiServices = Api();

  SearchModel? searchModel;
    late final AsyncSnapshot snapshot;

  late Future<List<Movie>> topratedmovies;
  late Future<List<SearchModel>> searchedmovie;

  void search(String query) {
    apiServices.getSearchedMovies(query).then((results) {
      setState(() {
        searchModel = results;
      });
    }).catchError((error) {
      // print("Error fetching search results: $error");
    });
  }

  @override
  void initState() {
    super.initState();
    topratedmovies = Api().getTopRatedMovie();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(
                            Icons.cancel,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            searchController.clear();
                            setState(() {
                              searchModel = null;
                            });
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.3),
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    search(value);
                  } else {
                    setState(() {
                      searchModel = null;
                    });
                  }
                },
              ),
            ),
            searchController.text.isEmpty
                ? Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Top searched movies',
                            style: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FutureBuilder(
                            future: topratedmovies,
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Center(
                                  child: Text(snapshot.error.toString()),
                                );
                              } else if (snapshot.hasData) {
                                return TopSearchedSlider(
                                  snapshot: snapshot);
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: searchModel == null
                        ? const SizedBox.shrink()
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // Number of items per row
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 0.7,
                            ),
                            itemCount: searchModel!.results.length,
                            itemBuilder: (context, index) {
                              // final movie = snapshot.data![index];
                              final result = searchModel!.results[index];
                              return Column(
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      'https://image.tmdb.org/t/p/w500${result.posterPath}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      result.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                  ),
          ],
        ),
      ),
    );
  }
}
