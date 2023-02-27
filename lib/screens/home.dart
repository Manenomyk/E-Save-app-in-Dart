import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/utils/app_layout.dart';
import 'package:baha_assignment/utils/app_text.dart';
import 'package:baha_assignment/widgets/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Village Bank Application', style: AppText.headStyle2),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  width: size.width * 0.9,
                  height: 55,
                  padding: const EdgeInsets.only(top: 3, left: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border:
                          Border.all(width: 1, color: AppColors.cursorColor),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                        )
                      ]),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        hintText: "Search Village bank",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(0)),
                    cursorColor: AppColors.cursorColor,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text('My Investments', style: AppText.headStyle2),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: const [
                    Explore(),
                    Explore(),
                    Explore(),
                    Explore()
                  ]),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text('More ...', style: AppText.headStyle2),
                SizedBox(
                  height: size.height * 0.05,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 275,
                    ),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.bgColor),
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
