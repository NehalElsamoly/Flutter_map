import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map/tadreeb/featured/presentation/widgets/tadree4.dart';
import 'package:map/tadreeb/featured/presentation/widgets/tadreep6.dart';
import 'package:map/tadreeb/featured/presentation/widgets/tdreep2.dart';
import 'package:map/widgets/appbar.dart';
import 'package:map/widgets/drawer.dart';
import 'package:map/widgets/screen33.dart';
import 'appbar4.dart';
import '../../../../city_app/view/screen_three.dart';

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}
class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;
  final screens = [
    Screen77(), // Assuming this is your home screen
  //  MyApp2(), // Assuming this is your search screen
  // tadreep(),
    tadreeeeeeeep5(),
    tadreep44()// Assuming this is your chat screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        index: _index,
        height: 50,
     //  backgroundColor: Color.fromARGB(255, 227, 227, 227),
        backgroundColor: Colors.white70,
        color: Color.fromARGB(255, 31, 149, 161),
        buttonBackgroundColor: Color.fromARGB(255, 31, 149, 161),
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.chat, size: 30, color: Colors.white),
        ],
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
      ),
    );
  }
}
