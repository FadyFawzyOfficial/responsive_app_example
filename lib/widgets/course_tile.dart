import 'package:flutter/material.dart';

import '../models/course.dart';

class CourseTile extends StatelessWidget {
  final Course course;

  const CourseTile({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(course.image),
              const SizedBox(height: 8),
              Text(
                course.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                course.time,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                course.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
