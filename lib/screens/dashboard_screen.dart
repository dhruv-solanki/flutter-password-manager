import 'package:flutter/material.dart';
import 'package:flutter_password_manager/controllers/secret_controller.dart';
import 'package:flutter_password_manager/widgets/add_secret_button.dart';
import 'package:flutter_password_manager/widgets/secret_card.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  final secretController = Get.put(SecretController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Your Secrets',
          ),
          actions: const [
            AddSecretButton(),
          ],
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: secretController.secrets.length,
            itemBuilder: (context, index) {
              return SecretCard(
                item: secretController.secrets[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
