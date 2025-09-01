import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.users});
  final List<String> users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(users[index]));
      },
    );
  }
}
