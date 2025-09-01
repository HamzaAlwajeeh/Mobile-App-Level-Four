import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.users});
  final List<String> users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListTile(
            title: Text(users[index], style: TextStyle(fontSize: 20)),
            leading: CircleAvatar(
              radius: 25,
              child: Icon(Icons.person, size: 30),
            ),
          ),
        );
      },
    );
  }
}
