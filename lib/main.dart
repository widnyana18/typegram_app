import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:typegram_app/features/auth/screens/user_information_screen.dart';
import 'package:typegram_app/features/landing/screens/landing_screen.dart';
import 'package:typegram_app/firebase_options.dart';
import 'package:typegram_app/router.dart';
import 'package:typegram_app/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Typegram',
      onGenerateRoute: generateRoute,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(backgroundColor: backgroundColor),
      ),
      home: const UserInformationScreen(),
    );
  }
}
