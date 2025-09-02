import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/learning_value_notifire/widgets/custom_buttom_sheet.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    this.onPressed,
    this.text,
    required this.textValue,
  });
  final void Function()? onPressed;
  final String? text;
  final ValueNotifier<String?> textValue;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () => showButtomSheet(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2B64E3),
        minimumSize: Size(MediaQuery.of(context).size.width - 64, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text ?? 'Confirm Permissions',
        style: TextStyle(
          fontSize: 16,
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
      elevation: 2,
      builder: (context) => CustomButtomSheet(textValue: textValue),
    );
  }
}
