import 'package:flutter/material.dart';

class TabItemList extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const TabItemList({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 95,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "text3"
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: "text3"
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

