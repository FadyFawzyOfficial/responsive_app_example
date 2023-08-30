import 'package:flutter/material.dart';

import '../models/course.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/menu_text_button.dart';

class CoursesScreen extends StatelessWidget {
  static const List<Course> courses = Course.courses;

  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(),
        actions: [
          const MenuTextButton(label: 'Courses'),
          const MenuTextButton(label: 'About'),
          IconButton(
            icon: const Icon(Icons.mark_email_unread_rounded),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
    );
  }
}
