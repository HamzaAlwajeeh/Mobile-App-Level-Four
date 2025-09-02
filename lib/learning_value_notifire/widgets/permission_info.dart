import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PermissionInfo extends StatelessWidget {
  const PermissionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/Safety.svg', width: 55, height: 55),
        Text(
          'Title goes here',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          'Lorem ipsum dolorem non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
          style: TextStyle(fontSize: 16, color: Color(0xff555555)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
