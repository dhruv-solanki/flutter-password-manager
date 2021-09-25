import 'package:flutter/material.dart';
import 'package:flutter_password_manager/controllers/auth_controller.dart';
import 'package:flutter_password_manager/screens/login_screen.dart';
import 'package:flutter_password_manager/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final box = GetStorage();

  final _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Password Manager',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: box.read('isSignUp') ?? false
          ? const LogInScreen()
          : const SignUpScreen(),
    );
  }
}
