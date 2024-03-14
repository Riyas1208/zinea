import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/widget/bottom_nav_bar.dart';


class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _buildLanguageOption(context, 'Malayalam', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Hindi', 'assets/images/img2.png'),
            _buildLanguageOption(context, 'Tamil', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Telugu', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Marathi', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Urdu', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Bhojpuri', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Kannada', 'assets/images/img2.png'),
            _buildLanguageOption(context, 'English', 'assets/images/img.png'),
            _buildLanguageOption(context, 'Korean', 'assets/images/img2.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption(BuildContext context, String language, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNav()),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                imagePath,
              ),
              Text(
                language,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontFamily: "text3",
                  fontWeight: FontWeight.w700,
                  color: AppColors.borderColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
