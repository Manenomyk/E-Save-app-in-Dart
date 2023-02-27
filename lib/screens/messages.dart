import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/utils/app_layout.dart';
import 'package:baha_assignment/utils/app_text.dart';
import 'package:baha_assignment/widgets/messages_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.45,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            "QB",
                            style: AppText.headStyle,
                          ))),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "Quick Bank",
                        style: AppText.headStyle2,
                      )
                    ]),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.9,
                height: 55,
                padding: const EdgeInsets.only(top: 3, left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: AppColors.cursorColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                      )
                    ]),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Search messages",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(0)),
                  cursorColor: AppColors.cursorColor,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const MessagesList(),
              SizedBox(
                height: size.height * 0.02,
              ),
              const MessagesList()
            ],
          ),
        ],
      ),
    );
  }
}
