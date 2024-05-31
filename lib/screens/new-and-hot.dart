import 'package:flutter/material.dart';
import 'package:netflixclone/screens/profile-secreen.dart';
import 'package:netflixclone/widgets/comingsoon.dart';



class Newndotscreen extends StatefulWidget {
  const Newndotscreen({super.key});

  @override
  State<Newndotscreen> createState() => newndotScreen();
}

// ignore: camel_case_types
class newndotScreen extends State<Newndotscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "New & Hot",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            const Icon(
              Icons.cast,
              color: Colors.white,
            ),
           const SizedBox(
              width: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>const Profilepage() ));
                },
                child: Container(
                  color:const Color.fromARGB(255, 133, 1, 1),
                 
                  height: 27,
                  width: 27,
                   child: const Icon(Icons.person,color: Colors.black,),
                ),
              ),
            ),
         const   SizedBox(
              width: 20,
            ),
          ],
          bottom: TabBar(
            dividerColor: Colors.black,
            isScrollable: false,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            labelStyle:const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            tabs: const [
              Tab(
                text: "  🍿 Coming Soon  ",
              ),
              Tab(
                text: "  🔥 Everyone's watching  ",
              )
            ],
          ),
        ),
        body:const TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ComingSoonMovieWidget(
                  imageUrl:
                      "https://i.redd.it/m9z84vtimguc1.png",
                  overview:
                      '"Turbo" centers around the life of Arjun Varma (played by Mammootty), a seasoned and highly skilled former race car driver who has retired from the high-speed world of racing. Arjun now leads a quiet life, managing a garage and mentoring young, aspiring drivers. However, his peaceful existence is disrupted when a powerful criminal syndicate, led by the ruthless antagonist Vikram Rao (played by a prominent actor.',
                  logoUrl: "https://i.redd.it/m9z84vtimguc1.png",
                  month: "JUNE",
                  day: "13",
                ),
                SizedBox(
                  height: 20,
                ),
                ComingSoonMovieWidget(
                  imageUrl:
                      'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQW3KhTzzwSGnL6hXt07lrAbrv8MO9GIZRAm7naBznaTcnFvFE3QOZcfvv1NR5CciFvXX1wba5yyiBicRV_53GyllNKndV4ptlq-gl9N9QT8-a9R5e74t77UCxqOhGInKfMGdw2Jw5Snfj7EfzdiyxpQG.jpg?r=c24',
                  overview:
                      'Geralt of Rivia, a brooding professional monster hunter for hire also known as witcher, struggles to keep his humanity in a medieval dark fantasy world ruled by corrupt kings, queens and mages, where poverty, violence and intolerance are rampant, normal humans are sometimes worse than actual monsters and most jobs that ...',
                  logoUrl:
                      "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/09/The-Witcher-and-Blood-Origin-Release-Dates-Revealed.jpg",
                  month: "Jun",
                  day: "27",
                ),
                SizedBox(
                  height: 20,
                ),
                ComingSoonMovieWidget(
                  imageUrl:
                      'https://www.mp4moviez.tl/cover/godzilla-x-kong:-the-new-empire-(2024)-hollywood-english-movie.jpg',
                  overview:
                      'Godzilla and the almighty Kong face a colossal threat hidden deep within the planet, challenging their very existence and the survival of the human race.',
                  logoUrl:
                      "https://nonstopnerd748323109.files.wordpress.com/2021/01/gvk-1.jpg?w=1024",
                  month: "March",
                  day: "29",
                ),
                
              ],
            ),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
               ComingSoonMovieWidget(
                imageUrl:
                    'https://static.moviecrow.com/gallery/20240410/228191-aaves.jpeg',
                overview:
                    '"Avesham" follows the story of Arjun Varma (Mammootty), a dedicated and upright police officer known for his unwavering sense of justice. Arjuns life takes a tragic turn when his family becomes the target of a ruthless criminal gang, led by the cunning and malevolent antagonist, played by a prominent actor. The gangs brutal actions leave Arjun devastated, and he finds himself grappling with his principles and the thirst for revenge.',
                logoUrl:
                    "https://static.moviecrow.com/gallery/20240403/228051-aa3.jpeg",
                month: "April",
                day: "11",
              ),
             SizedBox(height: 20,),
             ComingSoonMovieWidget(
                imageUrl:
                    'https://i.redd.it/ftm1ssuk9zjc1.jpeg',
                overview:
                    '"Manjummal Boys" is a feel-good movie that resonates with audiences through its depiction of genuine friendships and the pursuit of dreams. The film is a celebration of youthful energy and the enduring power of camaraderie. With its mix of humor, heart, and relatable characters, "Manjummal Boys" offers a delightful cinematic experience for viewers of all ages.',
                logoUrl:
                   'https://www.themoviedb.org/t/p/w1280/awOxXBZHh3jvFEOLJvTaJOX5urU.jpg',
                month: "Feb",
                day: "13",
              ),

        ]
        
        
        ),
          ),
        ]
        ),
      ),
    );
  }
}