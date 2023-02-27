import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter assignment',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const Welcome(),
    );
  }
}



