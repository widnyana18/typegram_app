import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:typegram_app/features/auth/controller/auth_controller.dart';

class OTPScreen extends ConsumerWidget {
  static const routeName = '/otp-screen';

  final String verificationId;
  const OTPScreen({
    super.key,
    required this.verificationId,
  });

  void sendOTPCode(
    BuildContext context,
    WidgetRef ref,
    String userOTP,
  ) {
    ref.read(authControllerProvider).verifyOTP(
          context,
          otpCode: userOTP,
          verificationId: verificationId,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Verifying your number'),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text('We have sent an SMS with a code'),
          SizedBox(
            width: size.width * .5,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: '- - - - - -',
                hintStyle: TextStyle(fontSize: 30),
              ),
              keyboardType: TextInputType.number,
              onChanged: (val) {
                if (val.length == 6) {
                  sendOTPCode(context, ref, val.trim());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
