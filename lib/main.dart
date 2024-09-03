import 'package:flutter/material.dart';
import 'package:youtube_clone/view/bottom_navbar_screen/bottom_navbar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: BottomNavbarScreen());
  }
}
