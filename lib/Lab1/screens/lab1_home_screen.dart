import 'package:flutter/material.dart';
import 'package:mobile_app_level_four/Lab1/widgets/custom_button.dart';
import 'package:mobile_app_level_four/Lab1/widgets/custom_form_field.dart';
import 'package:mobile_app_level_four/Lab1/widgets/custom_list_view.dart';

class Lab1HomeScreen extends StatefulWidget {
  const Lab1HomeScreen({super.key});

  @override
  State<Lab1HomeScreen> createState() => _Lab1HomeScreenState();
}

class _Lab1HomeScreenState extends State<Lab1HomeScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController controller = TextEditingController();
  List<String> usersList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adding Users'), centerTitle: true),
      body: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CustomTextFormField(controller: controller),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    usersList.add(controller.text);
                    controller.clear();
                    setState(() {});
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 40),
              Expanded(child: CustomListView(users: usersList)),
            ],
          ),
        ),
      ),
    );
  }
}
