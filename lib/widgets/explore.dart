import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/utils/app_layout.dart';
import 'package:baha_assignment/utils/app_text.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      width: size.width * 0.5,
      height: size.height * 0.33,
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.blueAccent, blurRadius: 2, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.2,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primary,
                image: const DecorationImage(
                    image: AssetImage(
                      "images/test.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Invest",
            style: AppText.headStyle2.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "London",
            style: AppText.headStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$40",
            style: AppText.headStyle2.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
