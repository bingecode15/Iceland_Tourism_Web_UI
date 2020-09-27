import 'package:flutter/material.dart';
import 'package:iceland_app/Screens/HomeScreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Iceland",
      home: HomeScreen(),
    );
  }
}
