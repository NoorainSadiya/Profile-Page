import 'package:flutter/material.dart';
import '../models/education.dart'; // Adjust the import path if necessary

class EducationSection extends StatelessWidget {
  final List<Education> education; // Use the Education class here

  EducationSection({required this.education});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education', style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: 8),
          Column(
            children: education.map((edu) {
              return ListTile(
                leading: Image.asset(edu.logo,
                    width: 40), // Access properties directly
                title: Text(edu.institution),
                subtitle: Text('GPA: ${edu.gpa}'),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
