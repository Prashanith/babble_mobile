import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  RxString authToken = RxString('');

  Future<void> initiateAuthentication() async{
    // Check If Token Exists and assign Authentication State
    if(authToken.isEmpty){
      // Unauthenticated
    }
  }
}
