import 'package:flutter/material.dart';
import 'package:sign_scribe_2/auth/login_or_register.dart';
import 'package:sign_scribe_2/theme/light_mode.dart';
import 'package:sign_scribe_2/theme/dark_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,

    );
  }
}