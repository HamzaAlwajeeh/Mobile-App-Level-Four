import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int number = 0;
  Color backgroundColor = Colors.blue;
  void increment() {
    number++;
    backgroundColor = number % 2 == 0 ? Colors.blue : Colors.green;
    notifyListeners();
  }

  int constNumber = 10;
}
