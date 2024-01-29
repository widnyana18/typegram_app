import 'package:flutter/material.dart';
import 'package:typegram_app/colors.dart';
import 'package:typegram_app/common/widgets/custom_button.dart';
import 'package:typegram_app/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Spacer(),
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(flex: 2),
              Image.asset(
                'assets/bg.png',
                width: 250,
                height: 250,
                color: tabColor,
              ),
              Spacer(flex: 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Read our Privacy Policy. Tap "Agree and Continue" to accept the Terms of Service',
                    style: TextStyle(
                      fontSize: 12,
                      color: greyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                      title: 'AGREE AND CONTINUE',
                      onTap: () {
                        navigateToLoginScreen(context);
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
