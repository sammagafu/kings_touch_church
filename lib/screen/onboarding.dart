import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kings_touch_church/constants/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kings_touch_church/screen/home.dart';

class OnBoardingScreen extends StatefulWidget {
  static final String id = "welcome screen";

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final String logo = 'assets/images/logo.svg';

  List _screens = [WelcomeMessage(), AboutChurch()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _screens.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: _screens[index],
            );
          }),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/pastornsia.jpg'),
            fit: BoxFit.cover),
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              // height: 160,
            ),
            Text(
                "Kings Touch Church is a place where you can belong, grow and serve with other believers. Join us as we journey together to be the hands and feet of Jesus Christ")
          ],
        ),
      ),
    );
  }
}

class AboutChurch extends StatelessWidget {
  const AboutChurch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/pastornorah.jpg'),
            fit: BoxFit.cover),
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              height: 160,
            ),
          ],
        ),
      ),
    );
  }
}