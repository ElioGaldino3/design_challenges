import 'package:flutter/material.dart';
import 'package:sign_up_01/sign_up/sign_up.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design Challenge 01',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll<EdgeInsets?>(EdgeInsets.fromLTRB(0, 17, 0, 17)),
            backgroundColor: MaterialStatePropertyAll(lightColours.backgroundColor),

          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll<EdgeInsets?>(EdgeInsets.fromLTRB(12, 18, 12, 18)),
            backgroundColor: MaterialStatePropertyAll(lightColours.backgroundAccentColor),
          ),
        ),
      ),
      home: const SignUpPage(),
    );
  }
}
