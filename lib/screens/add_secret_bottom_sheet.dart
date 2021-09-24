import 'package:flutter/material.dart';
import 'package:flutter_password_manager/controllers/secret_controller.dart';
import 'package:flutter_password_manager/models/secret_model.dart';
import 'package:flutter_password_manager/screens/dashboard_screen.dart';
import 'package:flutter_password_manager/widgets/form_input.dart';
import 'package:flutter_password_manager/widgets/init_button.dart';
import 'package:get/get.dart';

class AddSecretBottomSheet extends StatefulWidget {
  const AddSecretBottomSheet({Key? key}) : super(key: key);

  @override
  _AddSecretBottomSheetState createState() => _AddSecretBottomSheetState();
}

class _AddSecretBottomSheetState extends State<AddSecretBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController appNameController = TextEditingController();
  TextEditingController userIDController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final SecretController _secretController = Get.find();

  storeNewSecret(BuildContext context) {
    SecretModel secret = SecretModel(
      name: appNameController.text,
      userName: userIDController.text,
      password: passwordController.text,
    );

    _secretController.addSecret(secret);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Add your Secret',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FormInput(
              hintText: 'Ex. Google',
              labelText: 'App Name',
              icon: Icons.apps,
              validator: 'Please provide App Name',
              inputController: appNameController,
            ),
            const SizedBox(
              height: 20,
            ),
            FormInput(
              hintText: 'Ex. exa@gmail.com',
              labelText: 'UserID',
              icon: Icons.person_pin,
              validator: 'Please provide UserID',
              inputController: userIDController,
            ),
            const SizedBox(
              height: 20,
            ),
            FormInput(
              hintText: 'Enter password',
              labelText: 'Password',
              icon: Icons.lock,
              validator: 'Please provide Password',
              inputController: passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            InitButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  storeNewSecret(context);
                }
              },
              text: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
