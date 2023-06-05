import '../../controllers/mixin.dart';
import '../../models/enums/app_status.dart';
import '../../page_wrapper/plain_scaffold.dart';
import '../authentication/authentication.dart';
import 'splash.dart';
import 'package:flutter/material.dart';

class ApplicationRouter extends StatefulWidget {
  const ApplicationRouter({super.key});

  @override
  State<ApplicationRouter> createState() => _ApplicationRouterState();
}

class _ApplicationRouterState extends State<ApplicationRouter> with ControllersMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ApplicationStatus>(
        valueListenable: appController.appStatus,
        builder: (context, status, _) {
          if ([ApplicationStatus.init, ApplicationStatus.ready].contains(status)) {
            return const PlainScaffold(widget: SplashScreen());
          }
          // else if(status == ApplicationStatus.unauthenticate)
          else {
            return const PlainScaffold(widget: Authentication());
          }
        });
  }
}
