import 'package:flutter/material.dart';
import 'models/user_info.dart'; // Import your UserInfo model
import 'models/education.dart'; // Import the Education model
import 'models/project.dart'; // Import the Project model
import 'widgets/profile_header.dart'; // Import ProfileHeader widget
import 'widgets/education_section.dart'; // Import EducationSection widget
import 'widgets/project_section.dart'; // Import ProjectsSection widget
import 'widgets/contact_info.dart'; // Import ContactInfo widget

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
    name: 'Yuki Asakura',
    position: 'Product Designer',
    company: 'Uber',
    phone: '123-456-7890',
    email: 'yukiasakura60@gmail.com',
    bio: 'Seattle, Washington, United States',
    profilePic: 'assets/images/profile.png',
    education: [
      Education(
        logo: 'assets/images/uni-logo.png',
        institution: 'University of Washington',
        gpa: 3.8,
      ),
      Education(
        logo: 'assets/images/high-school.png',
        institution: 'High School',
        gpa: 3.9,
      ),
    ],
  );

  final List<Project> projects = [
    Project(
      title: 'Transit Navigator',
      description: 'A more comfortable transit navigation experience',
      image: 'assets/images/project1.png',
    ),
    Project(
      title: 'Facebook Top Fans',
      description: 'Bringing fans and creators closer together',
      image: 'assets/images/project2.png',
    ),
    Project(
      title: 'WSDOT',
      description: 'Using transit to navigate around major incidents',
      image: 'assets/images/project3.png',
    ),
    Project(
      title: 'Spotify for Artists',
      description: 'Empowering independent artists with royalties',
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
