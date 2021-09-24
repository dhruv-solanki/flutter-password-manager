import 'package:flutter/material.dart';
import 'package:flutter_password_manager/constants.dart';
import 'package:flutter_password_manager/controllers/auth_controller.dart';
import 'package:flutter_password_manager/screens/dashboard_screen.dart';
import 'package:flutter_password_manager/screens/error_screen.dart';
import 'package:flutter_password_manager/widgets/form_input.dart';
import 'package:flutter_password_manager/widgets/init_button.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // GetStorage box = GetStorage();
  final AuthController _authController = Get.find();

  validateUser() {
    bool validate = _authController.authenticateUser(
      emailController.text,
      passwordController.text,
    );

    if (validate) {
      Get.to(DashboardScreen());
    } else {
      Get.to(const ErrorScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Password Manager',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 20,
                        color: green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FormInput(
                      hintText: 'What is your Email?',
                      labelText: 'Email',
                      icon: Icons.email,
                      validator: 'Please enter your Email',
                      inputController: emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormInput(
                      hintText: 'What is your Secret?',
                      labelText: 'Password',
                      icon: Icons.lock,
                      validator: 'Please provide Password',
                      inputController: passwordController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InitButton(
                      text: "Login",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          validateUser();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
