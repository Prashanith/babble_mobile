import '../models/enums/app_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation/route_generator.dart';
import '../navigation/routes.dart';
import '../services/init_services.dart';
import 'mixin.dart';

class ApplicationController extends GetxController with ControllersMixin {
  final router = locator<RouteGenerator>();

  ValueNotifier<ApplicationStatus> appStatus =
      ValueNotifier(ApplicationStatus.init);

  // Called After all the service instances are created
  Future<void> initiateServices() async {
    // LocalStorage Check - Check for Authentication Token
    // Route to Screens based on the state of the Application
    await authController.initiateAuthentication();
    if(authController.authToken.isEmpty){
      appStatus.value = ApplicationStatus.unauthenticate;
    }
    else{

    }
  }
}
