import 'package:flutter_password_manager/models/secret_model.dart';
import 'package:get/state_manager.dart';

class SecretController extends GetxController {
  void addSecret(SecretModel secret) {
    secrets.add(secret);
  }

  var secrets = [
    SecretModel(
      name: 'Google',
      userName: 'exmaple@gamil.com',
      password: 'example@123',
    ),
    SecretModel(
      name: 'Slack',
      userName: 'slack@gamil.com',
      password: 'slack@123',
    ),
    SecretModel(
      name: 'Microsoft',
      userName: 'microsoft@gamil.com',
      password: 'micro@123',
    ),
    SecretModel(
      name: 'GitHub',
      userName: 'git@gamil.com',
      password: 'git@123',
    ),
  ].obs;
}