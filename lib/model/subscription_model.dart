import 'package:flutter/material.dart';
import 'package:zinea/view/widget/subscription_card.dart';

class PlanCategory extends StatelessWidget {
  final String categoryName;
  final List<PlanOption> options;

  PlanCategory(
      this.categoryName,
      this.options, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            categoryName,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontFamily: "text",
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: options,
        ),
      ],
    );
  }
}