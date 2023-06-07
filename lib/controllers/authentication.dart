import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  RxBool isSignIn = false.obs;
  ValueNotifier<TextEditingController> email =
      ValueNotifier(TextEditingController(text: ''));
  ValueNotifier<TextEditingController> password =
      ValueNotifier(TextEditingController(text: ''));

  RxString authToken = RxString('');

  onEmailChanged(String v) => email.value.text = v;

  onPasswordChanged(String v) => password.value.text = v;

  Future<void> initiateAuthentication() async {
    // Check If Token Exists and assign Authentication State
    if (authToken.isEmpty) {
      // Unauthenticated
    }
  }

  Future<void> onAuthenticate() async {
    if (isSignIn.value) {
    } else {}
  }
}
