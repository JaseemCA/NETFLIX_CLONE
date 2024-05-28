import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/constants/constant.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({
    super.key, required this.snapshot,
  });
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: 10,
          options: CarouselOptions(
              height: 300,
              autoPlay: true,
              viewportFraction: 0.55,
              enlargeCenterPage: true,
              pageSnapping: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1)),
          itemBuilder: (context, itemIndex, pageviewIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 400,
                width: 180,
                child: Image.network(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  '${Constant.imagepath}${snapshot.data[itemIndex].posterpath}'
                ),
                
              ),
            );
          }),
    );
  }
}
