import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.boxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  suffixIcon: Icon(Icons.close, color: Colors.white),
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Top Searches",
                  style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildListItem('All Of Are Dead', 'Horror', '2020', 4.5,
                    'assets/images/allOfUsAreDead.png'),
                buildListItem('Kurmatii', 'Anime', '2020', 4.5,
                    'assets/images/kurumatti.png'),
                buildListItem('New Beginnings', 'Comedy', '2020', 4.5,
                    'assets/images/newBeginning.png'),
                buildListItem(
                    'Naruto', 'Anime', '2020', 4.5, 'assets/images/Naruto.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(String title, String category, String year,
      double rating, String imagePath) {
    return ListTile(
        leading: Image.asset(imagePath),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: "text1"
          ),
        ),
        subtitle: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '·  $category   ·  $year',
                style: const TextStyle(
                    fontFamily: "text1",
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/star.png",
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 2),
                Text(
                  '$rating',
                  style: const TextStyle(
                      fontFamily: "text1",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColor
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Image.asset(
          "assets/images/play.png",
          height: 36,
          width: 36,
          color: AppColors.primaryColor,
        )
    );
  }
}
