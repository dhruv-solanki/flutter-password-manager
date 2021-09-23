import 'package:flutter/material.dart';
import 'package:flutter_password_manager/constants.dart';

// typedef StringValue = String Function(String);

class FormInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  // StringValue validator;
  final String validator;
  final TextEditingController inputController;

  const FormInput(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.icon,
      required this.validator,
      required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        icon: Icon(
          icon,
        ),
        hintText: hintText,
        labelText: labelText,
      ),
      obscureText: (icon == Icons.lock) ? true : false,
      controller: inputController,
      validator: ((value) {
        if (value!.isEmpty) {
          return validator;
        }
      }),
    );
  }
}
