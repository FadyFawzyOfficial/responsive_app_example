import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Image(
          width: 800,
          color: Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate,
          image: AssetImage('assets/images/header_image.png'),
        ),
        Text(
          'Our Courses',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 60,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
