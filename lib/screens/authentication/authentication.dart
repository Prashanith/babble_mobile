import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Babble'),
          Text('Welcome Back'),
          Text('You have been missed'),
          Text('Authentication Toggle Widget'),
          //Form Fields and Login Button

        ],
      ),
    );
  }
}