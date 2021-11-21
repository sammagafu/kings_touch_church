import 'package:flutter/material.dart';
import 'package:kings_touch_church/constants/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatefulWidget {
  static final String id = "welcome screen";
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final String logo = 'assets/images/logo.svg';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Opacity(
            opacity: .4,
            child: Image.asset(
              'assets/images/pastor.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              height: 180.0,
            ),
            Text(
              "Welcome to king's touch church",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 48,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor, padding: EdgeInsets.all(18)),
              child: Text(
                "Start Using the app",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            )
          ],
        )
      ],
    );
  }
}
