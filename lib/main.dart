import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/ui/home_page.dart';
import 'package:submission_flutter_pemula/ui/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Healthy Meal Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'poppins',
      ),
      home: OnboardingPage(),
    );
  }
}
