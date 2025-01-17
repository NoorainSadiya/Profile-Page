import 'package:cs442_mp2/models/education.dart';

class UserInfo {
  final String name;
  final String position;
  final String company;
  final String phone;
  final String email;
  final String bio;
  final String profilePic;
  final List<Education> education;

  UserInfo({
    required this.name,
    required this.position,
    required this.company,
    required this.phone,
    required this.email,
    required this.bio,
    required this.profilePic,
    required this.education,
  });
}
