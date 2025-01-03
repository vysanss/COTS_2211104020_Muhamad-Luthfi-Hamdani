import 'package:flutter/material.dart';
import 'view/onboarding.dart';
import 'view/loginpage.dart';
import 'view/register.dart'; // Add this import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: OnboardingPage(),
    );
  }
}