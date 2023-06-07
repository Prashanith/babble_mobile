import 'package:flutter/material.dart';

import '../services/init_services.dart';
import '../services/media_query.dart';

class PlainScaffold extends StatelessWidget {
  const PlainScaffold({required this.widget, super.key});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final pd = locator.get<ResponsiveDesign>().getPadding(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(padding: pd, child: widget),
      ),
    );
  }
}
