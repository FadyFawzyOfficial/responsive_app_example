import 'package:flutter/material.dart';

class MenuTextButton extends StatelessWidget {
  final String label;

  const MenuTextButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}
