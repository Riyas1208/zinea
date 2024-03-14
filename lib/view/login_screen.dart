import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/forgot_password_screen.dart';
import 'package:zinea/view/new_account_screen.dart';
import 'package:zinea/view/widget/bottom_nav_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "ZINEA",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "text",
                        fontSize: 40,
                        color: AppColors.primaryColor),
                  ),
                  Text(
                    "Enjoy Over 100,000 Movies and Series Only On One Place.",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "text1",
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 36,
                        fontFamily: "text1",
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.boxColor,
                    ),
                    child: TextField(
                      cursorColor: AppColors.textColor,
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide.none), // Remove default border
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
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.boxColor,
                    ),
                    child: TextField(
                      cursorColor: AppColors.textColor,
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontFamily: "text1",
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.key,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage()));
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "teext1",
                            fontSize: 12,
                            color: AppColors.textColor),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryColor),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNav()));
                      },
                      child: Row(
                        children: [
                          const Spacer(),
                          const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: "text1",
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset("assets/images/sign_in.png"),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                        Text(
                          'New User?',
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: "text1",
                              fontSize: 12),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 346,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.boxColor,
                      border: Border.all(color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewAccountPage()));
                      },
                      child: Row(
                        children: [
                          const Spacer(),
                          Image.asset("assets/images/person_2.png"),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Create A New Account',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "text1",
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Spacer(),
                        ],
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
