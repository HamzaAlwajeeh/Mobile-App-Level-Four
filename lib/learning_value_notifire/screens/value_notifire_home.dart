import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/learning_value_notifire/widgets/custom_button1.dart';
import 'package:provider/provider.dart';

class ValueNotifireHome extends StatefulWidget {
  const ValueNotifireHome({super.key});

  @override
  State<ValueNotifireHome> createState() => _ValueNotifireHomeState();
}

class _ValueNotifireHomeState extends State<ValueNotifireHome> {
  ValueNotifier<String?> textValue = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ValueListenableBuilder(
          valueListenable: textValue,
          builder:
              (context, value, _) => Center(
                child:
                    value == null
                        ? ChangeNotifierProvider<ValueNotifier<String?>>.value(
                          value: textValue,
                          child: CustomButton1(),
                        )
                        : Text(value),
              ),
        ),
      ),
    );
  }
}
