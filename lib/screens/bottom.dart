import 'package:baha_assignment/screens/home.dart';
import 'package:baha_assignment/screens/menu.dart';
import 'package:baha_assignment/screens/messages.dart';
import 'package:baha_assignment/screens/profile.dart';
import 'package:baha_assignment/utils/app_color.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _isActive = 0; //default selected index at start

  static final List<Widget> _widgets = <Widget>[
    const Home(),
    const Messages(),
    const Profile(),
    const Menu(),
  ];

  void _isTapped(int index) {
    setState(() {
      _isActive = index;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _widgets[_isActive]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _isActive,//index that is being set
          onTap: _isTapped, 
          elevation: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,//make the icons not to shift
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                activeIcon: Icon(Icons.message),
                label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                activeIcon: Icon(Icons.person),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                activeIcon: Icon(Icons.menu_book_outlined),
                label: "Menu"),
          ]),
    );
  }
}
