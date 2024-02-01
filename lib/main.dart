// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Music',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(62, 36, 17, 1),
                    Color.fromRGBO(48, 14, 32, 1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // Header kısmının logosu burada.
                          children: [
                            Image.asset(
                              "assets/images/logo.png",
                              width: 30,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Music",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // header kısmının iconları burada.
                          children: [
                            Icon(
                              Icons.podcasts,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/avatar.jpeg"),
                              radius: 13,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // playlistleri yazdırmak için kullanılır.
                      children: [
                        CategoryItem("Pop"),
                        CategoryItem("Energize"),
                        CategoryItem("Workout"),
                        CategoryItem("Feel Good"),
                        CategoryItem("Relaxation"),
                        CategoryItem("Rock"),
                        CategoryItem("Chill Out"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADİO FROM A SONG",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 187, 186, 186),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quıck Picks",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, right: 9, left: 9),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 187, 186, 186),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play All",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 187, 186, 186),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        MusicRow(
                            "assets/images/s6.jpeg", "Olmuyor", "Bilal Sonses"),
                        MusicRow("assets/images/s1.jpg", "Diva Yorgun",
                            "Melike Şahin"),
                        MusicRow("assets/images/s4.jpeg", "Adı Aşk Olsun",
                            "İlyas Yalçıntaş"),
                        MusicRow("assets/images/s2.jpeg", "Kalbim", "Bengü"),
                        MusicRow("assets/images/s5.jpeg", "Harbi Güzel",
                            "Murat Boz"),
                        MusicRow(
                            "assets/images/s3.jpeg", "Canavar", "Derya Uluğ"),
                        MusicRow("assets/images/s8.jpeg", "Gözyaşı", "Sancak"),
                        MusicRow(
                            "assets/images/s9.jpeg", "Tektaş", "İrem Derici"),
                        MusicRow(
                            "assets/images/s7.jpeg", "Sevmem", "Yiğit Mahzuni"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // BottomNavigationBar kısmının iconları burda mevcut.
            Container(
              color: Color.fromRGBO(33, 33, 33, 1),
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                        ),
                        Text(
                          "Samples",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.subscriptions,
                          color: Colors.white,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.slideshow,
                          color: Colors.white,
                        ),
                        Text(
                          "Upgrade",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MusicRow(String photo, String title, String Arist) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 90,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    Arist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 187, 186, 186),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget CategoryItem(String text) {
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6, right: 12, left: 12),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
          color: const Color.fromARGB(19, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(47, 255, 255, 255),
          )),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
