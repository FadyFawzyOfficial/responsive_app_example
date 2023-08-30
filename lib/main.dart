import 'package:flutter/material.dart';

import 'screens/courses_screen.dart';

void main() => runApp(const ResponsiveApp());

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive App',
      home: CoursesScreen(),
    );
  }
}
