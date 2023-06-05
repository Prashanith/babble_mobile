import 'authentication.dart';
import 'application.dart';
import 'user.dart';
import 'package:get/get.dart';

mixin ControllersMixin {
  AuthenticationController get authController => Get.put(AuthenticationController());
  UserController get userController => Get.put(UserController());
  ApplicationController get appController => Get.put(ApplicationController());

  void dispose() {
    userController.dispose();
    authController.dispose();
  }
}
