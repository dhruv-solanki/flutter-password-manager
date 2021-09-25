import 'package:flutter/material.dart';
import 'package:flutter_password_manager/constants.dart';
import 'package:flutter_password_manager/screens/login_screen.dart';
import 'package:flutter_password_manager/widgets/init_button.dart';
import 'package:get/get.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Authentication Failed',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Try Again',
                style: TextStyle(
                  color: red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
