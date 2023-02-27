import 'package:baha_assignment/screens/bottom.dart';
import 'package:baha_assignment/screens/login.dart';
import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/utils/app_layout.dart';
import 'package:baha_assignment/utils/app_text.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Village Banker',
              style: AppText.headStyle.copyWith(color: AppColors.primary),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    // shape: const CircleBorder(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Login()));
                },
                icon: const Icon(Icons.arrow_forward_ios),
                label: const Text("Get started "))
          ],
        ),
      ),
    );
  }
}
