import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) => Text('data'),
          backgroundColor: Colors.white,
        );
      },
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
}
