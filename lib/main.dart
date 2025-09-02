import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/learning_value_notifire/screens/value_notifire_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Level Four',
      debugShowCheckedModeBanner: false,
      home: ValueNotifireHome(),
    );
  }
}
