import 'package:flutter/material.dart';

class MakeMoviePage extends StatelessWidget {
  const MakeMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Text("makeMovie",
            style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
