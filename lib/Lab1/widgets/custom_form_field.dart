import 'package:flutter/material.dart';

class CustomTextFormFiels extends StatelessWidget {
  const CustomTextFormFiels({super.key, this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Name';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        // prefix: Icon(Icons.person),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        hintText: 'Enter User Name',
      ),
    );
  }
}
