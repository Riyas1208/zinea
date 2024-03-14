import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/otp_screen.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(); // Define emailController

  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "text1",
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.boxColor,
                    ),
                    child: TextField(
                      cursorColor: AppColors.textColor,
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none), // Remove default border
                        hintText: 'Email/Mobile Number',
                        hintStyle: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: "text1",
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          CupertinoIcons.person,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 349,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryColor
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage()));
                      },
                      child: const Text('Get OTP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "text1",
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to sign in',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "text",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
