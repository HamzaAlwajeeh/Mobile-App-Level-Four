import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Learning_Proder/providers/counter_provider.dart';
import 'package:mobile_app_level_four/Learning_Proder/widgets/custom_Text_widget.dart';
import 'package:mobile_app_level_four/Learning_Proder/widgets/custom_button_widget.dart';
import 'package:provider/provider.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({super.key});
  // [1] convert This to StatefulWidget
  // [2] add provider package in pubspec.yaml
  // [3] create a class that extends ChangeNotifier and Use NotyfiLeners to notify the listeners
  // [4] provide The provider : wrap the Widgets with ChangeNotifierProvider
  // [5] consume the provider : use Consumer Widget to listen to the changes
  // [6] Trigger the changes : call the methods from the provider class to trigger the changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Provider<CounterProvider>(
          create: (context) => CounterProvider(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(),
              const SizedBox(height: 20),
              CustomButtonWidget(
                backgroundColor: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
