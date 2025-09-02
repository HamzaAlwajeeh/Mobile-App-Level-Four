import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/learning_value_notifire/widgets/custom_buttom_sheet.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showButtomSheet(context),

      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2B64E3),
        minimumSize: Size(MediaQuery.of(context).size.width - 64, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: const Text(
        "Confirm",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  void showButtomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      elevation: 10,
      builder: (context) => CustomButtomSheet(),
    );
  }
}
