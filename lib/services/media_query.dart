import 'package:flutter/cupertino.dart';

class ResponsiveDesign {
  ResponsiveDesign();
  double getScreenHeight(BuildContext context, {bool excludePadding = true}) =>
      MediaQuery.of(context).size.width - (excludePadding ? 40 : 0);
  double getWidth(BuildContext context, {bool excludePadding = true}) =>
      MediaQuery.of(context).size.width - (excludePadding ? 40 : 0);
  double getHeight(BuildContext context, {bool excludePadding = true}) =>
      MediaQuery.of(context).size.height - (excludePadding ? 40 : 0);

  EdgeInsetsGeometry getPadding(BuildContext context,
          {bool excludePadding = true}) =>
      const EdgeInsets.symmetric(vertical: 20, horizontal: 20);

  double spacerXs(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.015;

  double spacerSm(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.025;

  double spacerMd(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.05;

  double spacerLg(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.075;

  double spacerXl(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.01;
}
