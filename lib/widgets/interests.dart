import 'package:flutter/material.dart';

class InterestsSection extends StatelessWidget {
  final List<String> interests;

  InterestsSection({required this.interests});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Interests', style: Theme.of(context).textTheme.headlineMedium),
        Wrap(
          spacing: 8.0,
          children:
              interests.map((interest) => Chip(label: Text(interest))).toList(),
        ),
      ],
    );
  }
}
