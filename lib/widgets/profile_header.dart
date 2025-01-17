import 'package:flutter/material.dart';
import '../models/user_info.dart'; // Import the UserInfo model

class ProfileHeader extends StatelessWidget {
  final UserInfo userInfo; // Declare a UserInfo variable

  ProfileHeader({required this.userInfo}); // Constructor to accept UserInfo

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(userInfo.profilePic), // Profile picture
            radius: 40,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userInfo.name,
                  style: Theme.of(context).textTheme.headlineLarge),
              Text(userInfo.position),
              Text(userInfo.company),
            ],
          ),
        ],
      ),
    );
  }
}
