import 'package:flutter/material.dart';
import 'package:kings_touch_church/screen/home.dart';
import 'package:kings_touch_church/theme/main_theme.dart';
import 'package:kings_touch_church/screen/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kings Touch Church',
      theme: kingsTouchTheme(),
      home: OnBoardingScreen(),
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
