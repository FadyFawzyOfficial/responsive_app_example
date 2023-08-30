import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Image(
          width: 800,
          color: Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate,
          image: AssetImage('assets/images/header_image.png'),
        ),
        Text(
          'Our Courses',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: ResponsiveValue(
              context,
              defaultValue: 60.0,
              valueWhen: [
                const Condition.smallerThan(name: MOBILE, value: 40.0),
                const Condition.largerThan(name: TABLET, value: 80.0),
              ],
            ).value,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
