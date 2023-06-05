import 'package:flutter/material.dart';

class UserRouter {
  static Route<dynamic> generateUserRoute(RouteSettings settings) {
    switch (settings.name?.replaceFirst('/home', '')) {
      case '/':
        return Page(const User());
      default:
        return Page(const User());
    }
  }
}

Route<dynamic> Page(Widget widget) {
  return MaterialPageRoute(builder: (_) => widget);
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('data'),
      ),
    );
  }
}
