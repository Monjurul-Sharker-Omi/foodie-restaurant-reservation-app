import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screens/cart.dart';
import 'package:flutter_ui_design_task/screens/homepage.dart';
import 'package:flutter_ui_design_task/screens/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List pages = [const Homepage(), const Cart(), const Profile()];
  //final List<BottomNavigationBarItem> items;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Wrap(
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("home.png"), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Image.asset("cart.png"), label: 'Cart'),
              BottomNavigationBarItem(
                icon: Image.asset("user.png"),
                label: 'Profile',
              )
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ],
      ),
      body: pages[_currentIndex],
    ));
  }
}
