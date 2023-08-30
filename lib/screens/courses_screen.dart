import 'package:flutter/material.dart';

import '../models/course.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/course_tile.dart';
import '../widgets/menu_text_button.dart';
import '../widgets/screen_header.dart';
import '../widgets/subscribe_block.dart';

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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(
            child: ScreenHeader(),
          ),
          const SizedBox(height: 32),
          Column(
            children: [
              CourseTile(course: courses[0]),
              CourseTile(course: courses[1]),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: SubscribeBlock(),
            ),
          ),
        ],
      ),
    );
  }
}
