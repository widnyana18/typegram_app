import 'package:flutter/material.dart';
import 'package:typegram_app/common/widgets/error.dart';
import 'package:typegram_app/features/auth/screens/login_screen.dart';
import 'package:typegram_app/features/auth/screens/otp_screen.dart';

Route<MaterialPageRoute> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    case OTPScreen.routeName:
      final registerId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(registerId: registerId),
      );

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const ErrorScreen(title: 'The screen doesn\'t exist'),
      );
  }
}
