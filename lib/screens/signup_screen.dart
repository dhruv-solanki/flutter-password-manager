import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_password_manager/widgets/form_input.dart';
import 'package:flutter_password_manager/widgets/init_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FormInput(
                      hintText: 'What is your Name?',
                      labelText: 'Name',
                      icon: Icons.person,
                      inputController: nameController,
                      validator: 'Please enter your Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormInput(
                      hintText: 'What is your Email?',
                      labelText: 'Email',
                      icon: Icons.email,
                      validator: 'Please enter you Email',
                      inputController: emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormInput(
                      hintText: 'What will be your Secret?',
                      labelText: 'Password',
                      icon: Icons.lock,
                      validator: 'Please provide Password',
                      inputController: passwordController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InitButton(
                      text: "Let's Go",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
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
