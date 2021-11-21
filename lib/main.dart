import 'package:flutter/material.dart';
import 'package:kings_touch_church/theme/main_theme.dart';
import 'package:kings_touch_church/theme/screen/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kings Touch Church',
      theme: kingsTouchTheme(),
      home: OnBoardingScreen(),
    );
  }
}
