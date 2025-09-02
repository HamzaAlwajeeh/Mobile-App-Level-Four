import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Learning_Proder/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    int count = Provider.of<CounterProvider>(context).number;
    return Text(count.toString(), style: TextStyle(fontSize: 45));
  }
}
