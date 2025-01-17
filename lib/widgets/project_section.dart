import 'package:flutter/material.dart';
import '../models/project.dart'; // Import the Project model

class ProjectsSection extends StatelessWidget {
  final List<Project> projects;

  ProjectsSection({required this.projects}); // Accept the list of projects

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: 8),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: projects.map((project) {
              return Column(
                children: [
                  Image.asset(
                    project.image,
                    height: 100,
                    fit: BoxFit.cover,
                  ), // Use the project image
                  Text(project.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold)), // Project title
                  Text(project.description), // Project description
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
