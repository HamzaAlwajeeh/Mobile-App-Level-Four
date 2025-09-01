import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Lab1/widgets/custom_button.dart';
import 'package:mobile_app_level_four/Lab1/widgets/custom_form_field.dart';
import 'package:mobile_app_level_four/Lab1/widgets/custom_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? user;
  List<String> usersList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextFormFiels(
              onChanged: (value) {
                user = value;
                setState(() {});
              },
            ),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  usersList.add(user!);
                  setState(() {});
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            Expanded(child: CustomListView(users: usersList)),
          ],
        ),
      ),
    );
  }
}
