import 'package:flutter/material.dart';

class ValueNotifireHome extends StatelessWidget {
  const ValueNotifireHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Text('data'),
          ),
        ),
      ),
    );
  }
}
