import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Learning_Proder/widgets/custom_Text_widget.dart';
import 'package:mobile_app_level_four/Learning_Proder/widgets/custom_button_widget.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(),
        CustomButtonWidget(backgroundColor: Colors.blue, onPressed: () {}),
      ],
    );
  }
}
