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
                      builder: (context) => const Profilepage()));
                },
                child: Container(
                  color: const Color.fromARGB(255, 133, 1, 1),
                  height: 27,
                  width: 27,
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
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
            labelStyle: const TextStyle(
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
        body: const TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ComingSoonMovieWidget(
                  imageUrl: "https://i.redd.it/m9z84vtimguc1.png",
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
                      "https://i.gadgets360cdn.com/products/large/L2-Empuraan2-596x800-1675929939069.jpg?downsize=*:420",
                  overview:
                      '"Emburan" revolves around the life of a mischievous yet kind-hearted man named Emburan, played by Tini Tom. Emburan is known in his village for his playful antics and humorous demeanor. Despite his carefree nature, he has a heart of gold and often goes out of his way to help others.',
                  logoUrl:
                      "https://i.gadgets360cdn.com/products/large/L2-Empuraan3-1422x800-1675929939070.jpg?downsize=*:420",
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
                  month: "Jan",
                  day: "17",
                ),
                SizedBox(
                  height: 20,
                ),
                ComingSoonMovieWidget(
                  imageUrl:
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f452aa2c-0c64-4bbf-b065-942b8dbda8bb/dfejf5l-50481b42-8486-4f85-a742-1b72fa6c76c3.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Y0NTJhYTJjLTBjNjQtNGJiZi1iMDY1LTk0MmI4ZGJkYThiYlwvZGZlamY1bC01MDQ4MWI0Mi04NDg2LTRmODUtYTc0Mi0xYjcyZmE2Yzc2YzMuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.nIpH74tPVzijuPzrEpTrguuDnzeGJXW79Lv6xp7XNOQ',
                  overview:
                      'The film takes place 300 years after the events of War and follows a young chimpanzee named Noa, who embarks on a journey alongside a human woman named Mae to determine the future for apes and humans alike.',
                  logoUrl:
                      "https://m.media-amazon.com/images/I/81ICjgUCq9L._SL1500_.jpg",
                  month: "May",
                  day: "10",
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [
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
              SizedBox(
                height: 20,
              ),
              ComingSoonMovieWidget(
                imageUrl: 'https://i.redd.it/ftm1ssuk9zjc1.jpeg',
                overview:
                    '"Manjummal Boys" is a feel-good movie that resonates with audiences through its depiction of genuine friendships and the pursuit of dreams. The film is a celebration of youthful energy and the enduring power of camaraderie. With its mix of humor, heart, and relatable characters, "Manjummal Boys" offers a delightful cinematic experience for viewers of all ages.',
                logoUrl:
                    'https://www.themoviedb.org/t/p/w1280/awOxXBZHh3jvFEOLJvTaJOX5urU.jpg',
                month: "Feb",
                day: "13",
              ),
              SizedBox(
                height: 20,
              ),
              ComingSoonMovieWidget(
                imageUrl: 'https://media-cache.cinematerial.com/p/500x/trfrzuzv/premalu-indian-movie-poster.jpg?v=1708680080',
                overview:
                    'In the film, Sachin Santhosh, a graduate from Kerala, plans on moving to the United Kingdom, but instead goes to Hyderabad and take a GATE course, where he meets and falls in love with Reenu Roy, an employee of an IT company. Girish A. D.',
                logoUrl:
                    'https://media-cache.cinematerial.com/p/500x/trfrzuzv/premalu-indian-movie-poster.jpg?v=1708680080',
                month: "Feb",
                day: "14",
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
