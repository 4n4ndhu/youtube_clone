import 'package:flutter/material.dart';
import 'package:youtube_clone/view/home_screen/home_screen.dart';
import 'package:youtube_clone/view/utils/constants/color_constants.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screens = [
    HomeScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.orange,
    ),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      bottomNavigationBar: _buil_bottomnavbar(),
    );
  }

  BottomNavigationBar _buil_bottomnavbar() {
    return BottomNavigationBar(
        selectedItemColor: ColorConstants.primarywhite,
        unselectedItemColor: ColorConstants.primarywhite,
        backgroundColor: ColorConstants.primaryblack,
        currentIndex: selected,
        onTap: (value) {
          selected = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
              ),
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle_outline,
              ),
              activeIcon: Icon(
                Icons.play_circle,
              ),
              label: "Shorts"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.add_circle,
              ),
              icon: Icon(
                Icons.add_circle_outline,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
              ),
              activeIcon: Icon(
                Icons.subscriptions,
              ),
              label: "Subscriptions"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            activeIcon: Icon(
              Icons.person,
            ),
            label: "You",
          ),
        ]);
  }
}
