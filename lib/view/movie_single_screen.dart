import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zinea/model/episode_model.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/favourite_screen.dart';
import 'package:zinea/view/profile_screen.dart';
import 'buy_now_screen.dart';
import 'rent_screen.dart';
import 'search_screen.dart';



class MovieSinglePage extends StatefulWidget {
  const MovieSinglePage({Key? key}) : super(key: key);

  @override
  _MovieSinglePageState createState() => _MovieSinglePageState();
}

class _MovieSinglePageState extends State<MovieSinglePage> {
  int _selectedButtonIndex = 0;
  int _selectedTabIndex = 0;
  String dropdownValue = 'Season 1';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
                    "assets/images/suits.png",
                    fit: BoxFit.fill,
                    width: screenSize.width,
                    height: screenSize.height * 0.5,
                  ),
                  Positioned(
                    top: 40,
                    left: 24,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 24,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavouritePage(),
                              ),
                            );
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchScreen(),
                              ),
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
              Positioned(
                top: 253,
                left: 50,
                child: Row(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BuyNowPage()),
                        );
                      },
                      child: _buildButton(
                        text: 'Buy Now',
                        index: 0,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RentPage()),
                        );
                      },
                      child: _buildButton(
                        text: 'Rent',
                        index: 1,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {

                      },
                      child: _buildButton(
                        text: 'Subscribe',
                        index: 2,
                      ),
                    ),],
                ),
              ),
                  Positioned(
                    top: 295,
                    left: 150,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/add.png",
                          height: 16,
                          width: 16,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Watch Later",
                            style: TextStyle(
                              fontFamily: "text1",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 322,
                    left: 10,
                    child:
                        const Text(
                          "Suits",
                          style: TextStyle(
                            fontFamily: "text1",
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                  ),
                  Positioned(
                    top: 322,
                    right: 24,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/star.png",
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          '4.5/5',
                          style: TextStyle(
                            fontFamily: "text3",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 347,
                    left: 10,
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has been the industry',
                      style: TextStyle(
                        fontFamily: "text1",
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 397,
                    left: 20,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/dot.png"),
                            const SizedBox(width: 2),
                            const Text(
                              'Crime',
                              style: TextStyle(
                                fontFamily: "text1",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: [
                            Image.asset("assets/images/dot.png"),
                            const SizedBox(width: 2),
                            const Text(
                              'Drama',
                              style: TextStyle(
                                fontFamily: "text1",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: [
                            Image.asset("assets/images/dot.png"),
                            const SizedBox(width: 2),
                            const Text(
                              'Office',
                              style: TextStyle(
                                fontFamily: "text1",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
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
                _buildTabItem(text: 'Episodes', index: 0),
                _buildTabItem(text: 'Trailers', index: 1),
                _buildTabItem(text: 'More Like This', index: 2),
              ],
            ),
            const SizedBox(height: 8,),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            IndexedStack(
              index: _selectedTabIndex,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 43,
                        width: 150,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        color: Colors.transparent,
                        child: DropdownButton(
                          value: dropdownValue,
                          dropdownColor: Colors.black,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
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
                          items: ['Season 1', 'Season 2', 'Season 3']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontFamily: "text2",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.white
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    // Episodes Tab Content
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: episodes.length,
                      itemBuilder: (context, index) {
                        final episode = episodes[index];
                        return Column(
                          children: [
                            ListTile(
                              leading: Stack(
                                children: [
                                  Image.asset(
                                    episode.image,
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/play.png',
                                        width: 30,
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              title: Text(
                                episode.title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "text1"
                                ),
                              ),
                              subtitle: Text(
                                episode.description,
                                style: const TextStyle(
                                    fontFamily: "text1",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: Colors.white
                                ),
                              ),
                              onTap: () {

                              },
                            ),
                            const Divider(
                              height: 10,
                              color: Colors.transparent,
                            ),
                          ],
                        );
                      },
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

  Widget _buildButton({required String text, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedButtonIndex = index;
        });
      },

      child: Container(
        width: 100,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: _selectedButtonIndex == index ? AppColors.primaryColor : Colors.transparent,
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: _selectedButtonIndex == index ? Colors.black : Colors.white,
              fontSize: 16,
              fontFamily: "text1",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({required String text, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "text1",
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: 70,
            height: 2,
            color: _selectedTabIndex == index ? Colors.blue : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
