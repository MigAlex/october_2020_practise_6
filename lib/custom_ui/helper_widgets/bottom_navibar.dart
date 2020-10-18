import 'package:flutter/material.dart';

class BottomNaviBarWidget extends StatelessWidget {
  static final icons = [
    Icon(Icons.description),
    Icon(Icons.search),
    Icon(Icons.add_circle),
    Icon(Icons.notifications),
    Icon(Icons.chat),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 2,
      iconSize: 25,
      selectedIconTheme: IconThemeData(size:42),
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      items: icons
          .map((el) => BottomNavigationBarItem(icon: el, title: Container()))
          .toList(),
    );
  }
}
