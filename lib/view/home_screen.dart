import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/favourite_screen.dart';
import 'package:zinea/view/profile_screen.dart';
import 'search_screen.dart';
import 'widget/film_list_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'English';
  String dropdownValue2 = 'Movies';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: screenSize.height * 0.5,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/wednesday.png",
                    fit: BoxFit.fill,
                    width: screenSize.width,
                    height: screenSize.height * 0.5,
                  ),
                  const Positioned(
                    top: 40,
                    left: 24,
                    child: Text(
                      "ZINEA",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontFamily: "text",
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 24,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FavouritePage()),
                            );
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SearchScreen()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/search.png',
                            color: Colors.white,
                            width: 24,
                            height: 24,
                          ),
                        ),

                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                          },
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/images/add.png"),
                      const SizedBox(width: 5),
                      const Text(
                        'Add Favourite',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "text2",
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 171,
                  color: AppColors.primaryColor,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Spacer(),
                        Image.asset("assets/images/play.png"),
                        const Spacer(),
                        const Text(
                          'Watch Now !',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: "text2",
                              color: Colors.black),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 43,
                    width: 150,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white)),
                    child: DropdownButton(
                      value: dropdownValue,
                      dropdownColor: Colors.black,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.white),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: ['English', 'Malayalam', 'Tamil', 'Hindi']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                                fontFamily: "text2",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 43,
                    width: 150,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white)),
                    child: DropdownButton(
                      value: dropdownValue2,
                      dropdownColor: Colors.black,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.white),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue2 = newValue!;
                        });
                      },
                      items: ['Movies', 'Series', 'Album', 'Short Film']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                                fontFamily: "text2",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "Continue Watching",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text2",
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 4),
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Image.asset(
                        "assets/images/wednessday.png",
                        width: 206,
                        height: 134,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wednesday",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "text2",
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Season 1 Episode 4",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "text2",
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 8,
                      child: Image.asset(
                        "assets/images/play.png",
                        height: 30,
                        width: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  const Text(
                    "New Release",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text2",
                        color: Colors.white),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    child: const Text(
                      "View More",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "text2",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ImageWithText(
                      imagePath: 'assets/images/lastOfUs.png',
                      title: 'The Last Of Us',
                      subtitle:'Seasons 1 Eps 9'),
                  ImageWithText(
                      imagePath: 'assets/images/mandalorian.png',
                      title: 'Mandolorian',
                      subtitle: 'Seasons 2 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/walkingDead.png',
                      title: 'The Walking Dead',
                      subtitle: 'Seasons 8 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/gameOfThrones.png',
                      title: 'Game Of Thrones',
                      subtitle: 'Seasons 1 Eps 6'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Text(
                    "Mostly Viewed",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text2",
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ImageWithText(
                      imagePath: 'assets/images/lastOfUs.png',
                      title: 'The Last Of Us',
                      subtitle:'Seasons 1 Eps 9'),
                  ImageWithText(
                      imagePath: 'assets/images/mandalorian.png',
                      title: 'Mandolorian',
                      subtitle: 'Seasons 2 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/walkingDead.png',
                      title: 'The Walking Dead',
                      subtitle: 'Seasons 8 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/gameOfThrones.png',
                      title: 'Game Of Thrones',
                      subtitle: 'Seasons 1 Eps 6'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Text(
                    "Trending Web Series",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text2",
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ImageWithText(
                      imagePath: 'assets/images/lastOfUs.png',
                      title: 'The Last Of Us',
                      subtitle:'Seasons 1 Eps 9'),
                  ImageWithText(
                      imagePath: 'assets/images/mandalorian.png',
                      title: 'Mandolorian',
                      subtitle: 'Seasons 2 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/walkingDead.png',
                      title: 'The Walking Dead',
                      subtitle: 'Seasons 8 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/gameOfThrones.png',
                      title: 'Game Of Thrones',
                      subtitle: 'Seasons 1 Eps 6'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Text(
                    "Horror",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text2",
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ImageWithText(
                      imagePath: 'assets/images/lastOfUs.png',
                      title: 'The Last Of Us',
                      subtitle:'Seasons 1 Eps 9'),
                  ImageWithText(
                      imagePath: 'assets/images/mandalorian.png',
                      title: 'Mandolorian',
                      subtitle: 'Seasons 2 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/walkingDead.png',
                      title: 'The Walking Dead',
                      subtitle: 'Seasons 8 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/gameOfThrones.png',
                      title: 'Game Of Thrones',
                      subtitle: 'Seasons 1 Eps 6'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Text(
                    "Thriller",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text2",
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ImageWithText(
                      imagePath: 'assets/images/lastOfUs.png',
                      title: 'The Last Of Us',
                      subtitle:'Seasons 1 Eps 9'),
                  ImageWithText(
                      imagePath: 'assets/images/mandalorian.png',
                      title: 'Mandolorian',
                      subtitle: 'Seasons 2 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/walkingDead.png',
                      title: 'The Walking Dead',
                      subtitle: 'Seasons 8 Eps 12'),
                  ImageWithText(
                      imagePath: 'assets/images/gameOfThrones.png',
                      title: 'Game Of Thrones',
                      subtitle: 'Seasons 1 Eps 6'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
