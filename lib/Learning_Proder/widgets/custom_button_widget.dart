import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Learning_Proder/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<CounterProvider>(context, listen: false).increment();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Provider.of<CounterProvider>(context).backgroundColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(140, 50),
      ),
      child: const Text('ADD', style: TextStyle(fontSize: 18)),
    );
  }
}
