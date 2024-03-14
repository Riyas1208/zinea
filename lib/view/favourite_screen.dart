import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget/tab_item_list.dart';
import 'widget/tab_item_widget.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  String selectedCategory = 'Movies';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
                child: Text("Favorites",
                style: TextStyle(
                  fontFamily: "text1",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white
                ),)
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 27.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TabItem(
                    title: 'Movies',
                    isSelected: selectedCategory == 'Movies',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Movies';
                      });
                    },
                  ),
                  TabItem(
                    title: 'Series',
                    isSelected: selectedCategory == 'Series',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Series';
                      });
                    },
                  ),
                  TabItem(
                    title: 'Album',
                    isSelected: selectedCategory == 'Album',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Album';
                      });
                    },
                  ),
                  TabItem(
                    title: 'Short Film',
                    isSelected: selectedCategory == 'Short Film',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Short Film';
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            if (selectedCategory == 'Movies')
              const Column(
                children: [
                  Row(
                    children: [
                      TabItemList(
                        imagePath: 'assets/images/hobbit.png',
                        title: 'The Hobbit',
                        subtitle: '2 Hour 45 Mins ',
                      ),
                      TabItemList(
                        imagePath: 'assets/images/brave.png',
                        title: 'Brave',
                        subtitle: '1 Hour 30 Mins',
                      ),
                      TabItemList(
                        imagePath: 'assets/images/panther.png',
                        title: 'Black Panther:\nWakanda Forever',
                        subtitle: '1 Hour 30 Mins',
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      TabItemList(
                        imagePath: 'assets/images/avengers.png',
                        title: 'Marvel Avengers',
                        subtitle: '2 Hour 15 Mins',
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}