import 'package:flutter/material.dart';
import 'package:zinea/view/category_screen.dart';
import '../model/subscription_model.dart';
import 'widget/subscription_card.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage()));
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: "text2",
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(width: 16.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              'Select Subscription Plan',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "text",
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Select your Subscription plan\n      according to your will',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontFamily: "text",
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20.0),
            PlanCategory('12 Months Plan', [
              PlanOption('Full Payment', '₹16,000', '₹20,000', '24% OFF'),
              PlanOption('Monthly Payment', '₹5,000', '₹20,000', '24% OFF'),
            ]),
            PlanCategory('6 Months Plan', [
              PlanOption('Full Payment', '₹16,000', '₹20,000', '24% OFF'),
              PlanOption('Monthly Payment', '₹2,000', '₹20,000', '24% OFF'),
            ]),
            PlanCategory('3 Months Plan', [
              PlanOption('Full Payment', '₹16,000', '₹20,000', '24% OFF'),
              PlanOption('Monthly Payment', '₹2,000', '₹20,000', '24% OFF'),
            ]),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Have Questions? Reach Us',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
