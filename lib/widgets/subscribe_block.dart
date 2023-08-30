import 'package:flutter/material.dart';

class SubscribeBlock extends StatelessWidget {
  const SubscribeBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Want to learn more?\nSubscribe to our newsletter!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 64,
              vertical: 16,
            ),
          ),
          onPressed: () {},
          child: const Text('Subscribe'),
        )
      ],
    );
  }
}
