import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/utils/app_layout.dart';
import 'package:baha_assignment/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class MessagesList extends StatefulWidget {
  const MessagesList({super.key});

  @override
  State<MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Container(
      height: size.height * 0.15,
      width: double.maxFinite,
      decoration:  BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My account",
                  style: AppText.headStyle2,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "village account",
                  style: AppText.textStyle,
                ),
                Text(
                  "R 700",
                  style: AppText.textStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
