import 'package:flutter/material.dart';
import 'package:netflixclone/constants/constant.dart';
import 'package:netflixclone/screens/movie-details.dart';

class TopSearchedSlider extends StatelessWidget {
   const TopSearchedSlider({
    Key? key,
    required this.snapshot,
  
  }) : super(key: key);

  final AsyncSnapshot snapshot;
  

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 200,
      child: ListView.builder(
       
        physics:const BouncingScrollPhysics(),
        itemCount: snapshot.data.length,
        itemBuilder: (context, index) {
          final movie = snapshot.data![index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MovieDetailScreen(movie: movie)));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Image.network(
                        '${Constant.imagepath}${movie.posterpath}',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            movie.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
