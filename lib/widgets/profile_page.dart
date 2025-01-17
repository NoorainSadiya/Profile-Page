import 'package:flutter/material.dart';
import '../models/user_info.dart'; // Import your UserInfo model
import '../models/project.dart'; // Import the Project model
import '../models/education.dart'; // Import the Education model
import '../widgets/profile_header.dart'; // Import ProfileHeader widget
import '../widgets/education_section.dart'; // Import EducationSection widget
import '../widgets/project_section.dart'; // Import ProjectsSection widget
import '../widgets/contact_info.dart'; // Import ContactInfo widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final UserInfo userInfo = UserInfo(
    name: 'John Doe',
    position: 'Software Engineer',
    company: 'Tech Co.',
    phone: '123-456-7890',
    email: 'johndoe@example.com',
    bio: 'Passionate about coding.',
    profilePic: 'assets/images/profile.png',
    education: [
      Education(
        logo: 'assets/images/logo1.png',
        institution: 'High School',
        gpa: 3.8,
      ),
      Education(
        logo: 'assets/images/logo2.png',
        institution: 'University',
        gpa: 3.9,
      ),
    ],
  );

  final List<Project> projects = [
    Project(
      title: 'Project 1',
      description: 'Description for Project 1.',
      image: 'assets/images/project1.png',
    ),
    Project(
      title: 'Project 2',
      description: 'Description for Project 2.',
      image: 'assets/images/project2.png',
    ),
    Project(
      title: 'Project 3',
      description: 'Description for Project 3.',
      image: 'assets/images/project3.png',
    ),
    Project(
      title: 'Project 4',
      description: 'Description for Project 4.',
      image: 'assets/images/project4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(userInfo: userInfo),
            ContactInfo(userInfo: userInfo),
            EducationSection(education: userInfo.education),
            ProjectsSection(projects: projects), // Pass the projects list
          ],
        ),
      ),
    );
  }
}
