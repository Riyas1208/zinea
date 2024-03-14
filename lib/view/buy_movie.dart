import 'package:flutter/material.dart';

class BuyMoviePage extends StatelessWidget {
  const BuyMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("buy movie",
          style: TextStyle(
              color: Colors.white
          ),),
      ),
    );
  }
}
