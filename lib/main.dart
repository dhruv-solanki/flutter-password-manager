import 'package:flutter/material.dart';
import 'package:flutter_password_manager/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Manager',
      theme: ThemeData.dark(),
      home: const SignUpScreen(),
    );
  }
}
