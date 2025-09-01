import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Lab1/screens/lab1_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      title: 'Level Four',
      debugShowCheckedModeBanner: false,
      home: Lab1HomeScreen(),
    );
  }
}
