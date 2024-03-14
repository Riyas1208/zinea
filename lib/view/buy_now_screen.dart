import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';

class BuyNowPage extends StatelessWidget {
  const BuyNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Center(
            child: Image.asset(
              'assets/images/suits.png',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Suits",
                style: TextStyle(
                  fontFamily: "text1",
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white
                ),),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's ",
                  style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white
                  ),),
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Buy fot lifetime at",
                style: TextStyle(
                    fontFamily: "text1",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white
              ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 159,
                height: 98,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white
                  ),
                  color: Colors.transparent
                ),
                child: const Column(
                  children: [
                    Spacer(),
                    Text("Buy For",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "text",
                    ),),
                    Spacer(),
                    Text("₹250",
                    style: TextStyle(
                      fontFamily: "text",
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      color: Colors.white
                    ),),
                    Spacer()
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 297,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primaryColor),
              child: TextButton(
                onPressed: () {

                },
                child: const Text(
                  'Proceed to Buy',
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
    );
  }
}
