import 'package:flutter/material.dart';

class BookCelebrityPage extends StatelessWidget {
  const BookCelebrityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Text("book CelebrityPage",
            style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
