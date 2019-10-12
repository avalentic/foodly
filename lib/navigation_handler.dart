import 'package:flutter/material.dart';
import 'package:foodly/ui/home.dart';
import 'package:foodly/ui/search.dart';
import 'package:foodly/ui/location.dart';
import 'package:foodly/ui/user.dart';

class NavigationHandler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationHandlerState();
  }
}

class NavigationHandlerState extends State<NavigationHandler> {
  int _currentBottomNavBarIndex = 0;
  final List<Widget> _bottomNavBarFragments = [
    Home(),
    Search(),
    Location(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavBarFragments[_currentBottomNavBarIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  onTabTapped(int index) {
    setState(() {
      _currentBottomNavBarIndex = index;
    });
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentBottomNavBarIndex,
      backgroundColor: Color(0xffe9e9e9),
      onTap: onTabTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text(
            "Home",
            style: TextStyle(
              color: Color(0xff454f63),
            ),
          ),
          icon: Icon(
            Icons.home,
            color: Color(0xff454f63),
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            "Search",
            style: TextStyle(
              color: Color(0xff454f63),
            ),
          ),
          icon: Icon(
            Icons.search,
            color: Color(0xff454f63),
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            "Nearby",
            style: TextStyle(
              color: Color(0xff454f63),
            ),
          ),
          icon: Icon(
            Icons.add_location,
            color: Color(0xff454f63),
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            "Account",
            style: TextStyle(
              color: Color(0xff454f63),
            ),
          ),
          icon: Icon(
            Icons.account_circle,
            color: Color(0xff454f63),
          ),
        ),
      ],
    );
  }
}
