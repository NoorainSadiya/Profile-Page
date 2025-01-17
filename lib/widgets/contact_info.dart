// ContactInfo Widget Example (lib/widgets/contact_info.dart)
import 'package:flutter/material.dart';
import '../models/user_info.dart';

class ContactInfo extends StatelessWidget {
  final UserInfo userInfo;

  ContactInfo({required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(userInfo.phone),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(userInfo.email),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(userInfo
                .bio), // You can adjust this to show address or bio as needed
          ),
        ],
      ),
    );
  }
}
