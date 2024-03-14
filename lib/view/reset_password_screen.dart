import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/login_screen.dart';

class ResetPasswordPage extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reset Password',
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.boxColor,
                      ),
                      child: TextField(
                        cursorColor: AppColors.textColor,
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "text1",
                              fontSize: 16,
                              color: AppColors.textColor),
                          prefixIcon: Icon(
                            Icons.key,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.boxColor,
                      ),
                      child: TextField(
                        cursorColor: AppColors.textColor,
                        controller: rePasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Re-enter Password',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "text1",
                              fontSize: 16,
                              color: AppColors.textColor),
                          prefixIcon: Icon(
                            Icons.key,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 349,
                      height: 46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "text1",
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
