import 'package:flutter/material.dart';
import 'package:netflixclone/screens/home-screen.dart';
import 'package:netflixclone/screens/more-screen.dart';
import 'package:netflixclone/screens/search-screen.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.black,
            height: 70,
            child: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(Icons.photo_library_outlined),
                  text: 'New & Hot',
                )
              ],
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
            ),
          ),
          body: const TabBarView(
            children: [
              Homepage(),
              SearchScreen(),
              MoreScreen()
              
              ]),
        ));
  }
}
