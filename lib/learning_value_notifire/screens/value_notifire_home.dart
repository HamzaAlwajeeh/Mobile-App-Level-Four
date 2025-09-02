import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/learning_value_notifire/widgets/custom_button1.dart';

class ValueNotifireHome extends StatelessWidget {
  const ValueNotifireHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(child: CustomButton1()),
      ),
    );
  }
}
