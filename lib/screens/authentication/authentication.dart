import 'package:flutter/material.dart';

import '../../controllers/mixin.dart';
import '../../services/init_services.dart';
import '../../services/media_query.dart';
import '../../widgets/authentication_toggle.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> with ControllersMixin {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final h = locator.get<ResponsiveDesign>();
    SizedBox spacer = SizedBox(
      height: h.spacerSm(context),
    );
    final auth = authController;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Babble'),
          SizedBox(
            height: h.spacerXs(context),
          ),
          const Text('Welcome Back'),
          SizedBox(
            height: h.spacerXs(context),
          ),
          const Text('You have been missed'),
          SizedBox(
            height: h.spacerXs(context),
          ),
          AuthenticationToggle(
            states: const [true, false],
            activeState: activeIndex,
            onClickState: (i) {
              setState(() {
                activeIndex = i;
              });
            },
            titles: const ['LOGIN', 'REGISTER'],
          ),
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: h.spacerXs(context),
                ),
                TextFormField(
                  controller: auth.email.value,
                  onChanged: (v) => auth.onEmailChanged(v),
                ),
                SizedBox(
                  height: h.spacerSm(context),
                ),
                TextFormField(
                  controller: auth.password.value,
                  onChanged: (v) => auth.onPasswordChanged(v),
                  obscureText: false,
                ),
                SizedBox(
                  height: h.spacerSm(context),
                ),
                ElevatedButton(onPressed: () => {}, child: const Text('SUBMIT'))
              ],
            ),
          ),

          //Form Fields and Login Button
        ],
      ),
    );
  }
}
