import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';

class PlanOption extends StatelessWidget {
  final String paymentType;
  final String discountedPrice;
  final String originalPrice;
  final String discount;

  PlanOption(this.paymentType, this.discountedPrice, this.originalPrice, this.discount);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.borderColor
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              paymentType,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: "text",
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              discountedPrice,
              style: const TextStyle(
                fontSize: 32.0,
                fontFamily: "text",
                fontWeight: FontWeight.w500,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
            Row(
              children: [
                Text(
                  originalPrice,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "text",
                    color: Colors.white,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                  ),
                ),

                const SizedBox(width: 8,),
                Text(
                  discount,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "text",
                    color: AppColors.textColor,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
        Container(
          width: 138,
          height: 34,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.primaryColor
          ),
          child: TextButton(
            onPressed: () {

            },
            child: const Text('Choose Plan',
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
    );
  }
}
