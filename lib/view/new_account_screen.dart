import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/subscription_screen.dart';

class NewAccountPage extends StatefulWidget {
  const NewAccountPage({Key? key}) : super(key: key);

  @override
  _NewAccountPageState createState() => _NewAccountPageState();
}

class _NewAccountPageState extends State<NewAccountPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  String dropdownValue = 'Gender';
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Let’s  Sign You Up !",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
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
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "text1",
                            fontSize: 16,
                            color: AppColors.textColor),
                        prefixIcon: Icon(
                          CupertinoIcons.person,
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
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
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
                        border: OutlineInputBorder(borderSide: BorderSide.none),
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: AppColors.textColor,
                    thickness: 0.3,
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
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "text1",
                            fontSize: 16,
                            color: AppColors.textColor),
                        prefixIcon: Icon(
                          Icons.alternate_email,
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
                      controller: mobileController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Mobile No',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "text1",
                            fontSize: 16,
                            color: AppColors.textColor),
                        prefixIcon: Image.asset("assets/images/mobile.png"),
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
                      controller: dobController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Date Of Birth',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "text1",
                            fontSize: 16,
                            color: AppColors.textColor),
                        prefixIcon: Image.asset("assets/images/calender.png"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.boxColor,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue ?? 'Gender';
                          });
                        },
                        dropdownColor: Colors.black,
                        items: ['Gender', 'Male', 'Female']
                            .map<DropdownMenuItem<String>>((String value) {
                          String imagePath;
                          if (value == 'Male') {
                            imagePath = 'assets/images/gender.png';
                          } else if (value == 'Female') {
                            imagePath = 'assets/images/gender.png';
                          } else {
                            imagePath = 'assets/images/gender.png';
                          }
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    imagePath,
                                    width: 24,
                                    height: 24,
                                    color: AppColors.textColor,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    value,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "text1",
                                      fontSize: 16,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.white,
                        child: Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "text1",
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'I agree to the terms of use and acknowledging the\n',
                            ),
                            TextSpan(
                              text: 'privacy policy',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                              text: ' close.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColor,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubscriptionPage()));
                      },
                      child: Row(
                        children: [
                          const Spacer(),
                          Image.asset(
                            "assets/images/person_2.png",
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Create A New Account',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "text1",
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
