import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/reset_password_screen.dart';

class OtpPage extends StatelessWidget {
  final List<TextEditingController> _otpControllers = List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Otp Verification',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: "text1",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'This Verification is essential for 2-Step Verification and making your account secure in any case of loss.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "text1",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.boxColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: _otpControllers[i],
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                            focusNode: _focusNodes[i],
                            onChanged: (value) {
                              if (value.length == 1 && i < 3) {
                                FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
                              } else if (value.isEmpty && i > 0) {
                                FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
                              }
                            },
                            decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    SizedBox(width: 10), // Adjust the width of the SizedBox according to your preference
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text("The OTP has been sent to your personal number ending\n          with XXXX please Do not share it with others.",
                style: TextStyle(
                    fontFamily: "text1",
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.white
                ),),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 345,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColor,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordPage()));
                  },
                  child: Row(
                    children: [
                      Spacer(),
                      Text('Complete',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "text1",
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),),
                      SizedBox(width: 8,),
                      Image.asset("assets/images/tick.png",
                        color: Colors.black,),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 345,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.boxColor
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Having Issue? Change Number !',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: "text1",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
