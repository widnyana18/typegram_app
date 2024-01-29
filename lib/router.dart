import 'package:flutter/material.dart';
import 'package:typegram_app/common/widgets/error.dart';
import 'package:typegram_app/features/auth/screens/login_screen.dart';

Route<MaterialPageRoute> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const ErrorScreen(title: 'The screen doesn\'t exist'),
      );
  }
}
