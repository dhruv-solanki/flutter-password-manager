import 'package:flutter_password_manager/models/user_model.dart';
import 'package:flutter_password_manager/screens/login_screen.dart';
import 'package:flutter_password_manager/screens/signup_screen.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  GetStorage box = GetStorage();

  // var isSignup = false.obs;

  setSignUp(bool value) {
    box.write('isSignUp', value);
  }

  setUser(UserModel user) {
    box.write('user', user);
  }

  bool authenticateUser(String email, String password) {
    if (email == getUser().email && password == getUser().password) {
      return true;
    }
    return false;
  }

  getUser() {
    var user = box.read('user');
    return user;
  }
}
