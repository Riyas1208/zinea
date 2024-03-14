import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';

class YourMoviesPage extends StatelessWidget {
  const YourMoviesPage({Key? key}) : super(key: key);

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
                ListItem(
                    'All Of Are Dead',
                    'assets/images/allOfUsAreDead.png'),
                SizedBox(height: 6,),
                ListItem(
                    'Hellsing: Ultimate',
                    'assets/images/kurumatti.png'),
                SizedBox(height: 6,),
                ListItem(
                    'The Last Of Us',
                    'assets/images/newBeginning.png'),
                SizedBox(height: 6,),
                ListItem(
                    'My Hero Academia',
                    'assets/images/Naruto.png'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Brought Movies",
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
                ListItem(
                    'All Of Are Dead',
                    'assets/images/allOfUsAreDead.png'),
                SizedBox(height: 6,),
                ListItem(
                    'Hellsing: Ultimate',
                    'assets/images/kurumatti.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ListItem(String title,String imagePath) {
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
        trailing: Image.asset(
          "assets/images/play.png",
          height: 36,
          width: 36,
          color: Colors.white,
        )
    );
  }
}
