import 'package:flutter/material.dart';
import 'package:my_bud/colors.dart';

class SuggestionBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String descText;
  const SuggestionBox(
      {super.key,
      required this.color,
      required this.headerText,
      required this.descText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 22),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headerText,
            style: const TextStyle(
              color: Pallete.blackColor,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            descText,
            style: const TextStyle(
              color: Pallete.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
