import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/learning_value_notifire/widgets/custom_button1.dart';
import 'package:mobile_app_level_four/learning_value_notifire/widgets/permission_info.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 354,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 32,
          left: 32,
          top: 24,
          bottom: 34,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PermissionInfo(),
            CustomButton1(),
            // CustomTextButton(),
          ],
        ),
      ),
    );
  }
}
