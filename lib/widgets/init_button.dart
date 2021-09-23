import 'package:flutter/material.dart';

import '../constants.dart';

class InitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const InitButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: green,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
