import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:typegram_app/features/auth/repository/auth_repository.dart';

final authControllerProvider = Provider((ref) {
  final userRepository = ref.watch(authRepositoryProvider);
  return AuthController(auth: userRepository);
});

class AuthController {
  final AuthRepository auth;
  AuthController({required this.auth});

  void signinWithPhoneNumber(
    BuildContext context, {
    required String phoneNumber,
  }) {
    auth.signinWithPhoneNumber(context, phoneNumber: phoneNumber);
  }

  void verifyOTP(
    BuildContext context, {
    required String otpCode,
    required String verificationId,
  }) {
    auth.verifyOTP(
      context,
      otpCode: otpCode,
      verificationId: verificationId,
    );
  }
}
