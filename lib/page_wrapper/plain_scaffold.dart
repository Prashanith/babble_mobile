import 'package:flutter/material.dart';

class PlainScaffold extends StatelessWidget {
  const PlainScaffold({required this.widget, super.key});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(
                vertical:20, horizontal: 20),
            child: widget),
      ),
    );
  }
}
