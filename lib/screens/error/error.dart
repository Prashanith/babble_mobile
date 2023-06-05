import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ErrorWidget.withDetails(
      message: 'Unkown Error Occured, RELOGIN',
    );
  }
}
