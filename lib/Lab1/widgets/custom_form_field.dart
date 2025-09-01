import 'package:flutter/material.dart';

class CustomTextFormFiels extends StatelessWidget {
  const CustomTextFormFiels({super.key, this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        prefix: Icon(Icons.person),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'Enter your text',
      ),
    );
  }
}
