
import 'package:flutter/material.dart';

import 'package:netflixclone/constants/constant.dart';
import 'package:netflixclone/models/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          // leading: BackButton_Screen(),
          backgroundColor: Colors.black,
          expandedHeight: 400,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              movie.title,
              style: TextStyle(
                  fontSize: 18, letterSpacing: 1, fontWeight: FontWeight.w700),
            ),
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              child: Image.network(
                "${Constant.imagepath}${movie.backDropPath}",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Overview",
                  style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  movie.overview,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            Text(
                              "Release date:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              movie.releaseDate,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Text(
                              "Rating: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text("${movie.voteaverage.toStringAsFixed(1)}/10")
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
