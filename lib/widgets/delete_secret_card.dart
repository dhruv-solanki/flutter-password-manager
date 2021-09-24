import 'package:flutter/material.dart';
import 'package:flutter_password_manager/constants.dart';
import 'package:flutter_password_manager/controllers/secret_controller.dart';
import 'package:flutter_password_manager/models/secret_model.dart';
import 'package:flutter_password_manager/widgets/secret_card.dart';
import 'package:get/get.dart';

class DeleteSecretCard extends StatelessWidget {
  final SecretModel secret;

  DeleteSecretCard({
    Key? key,
    required this.secret,
  }) : super(key: key);

  final SecretController _secretController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (_) {
        _secretController.removeSecret(secret);
      },
      background: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: SecretCard(
        item: secret,
      ),
    );
  }
}
