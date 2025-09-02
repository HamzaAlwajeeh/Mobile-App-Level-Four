import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Learning_Proder/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    Color? backgroundColor;
    final count = Provider.of<CounterProvider>(context).number;
    return ElevatedButton(
      onPressed: () {
        count % 2 == 0
            ? backgroundColor = Colors.blue
            : backgroundColor = Colors.green;
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(140, 50),
      ),
      child: const Text('ADD', style: TextStyle(fontSize: 18)),
    );
  }
}
