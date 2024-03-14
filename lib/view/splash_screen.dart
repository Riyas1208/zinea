import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'dart:async';
import 'package:zinea/view/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Text("ZINEA",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "text",
            fontSize: 40,
            color: AppColors.primaryColor
          ),),
        ),
      ),
    );
  }
}