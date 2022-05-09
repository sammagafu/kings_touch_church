import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kings_touch_church/constants/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kings_touch_church/model/ministries.dart';
import 'sermons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "homepage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: kContentDarkTheme,
        showUnselectedLabels: true,
        fixedColor: kPrimaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/icons-01.svg'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/icons-02.svg'),
            label: "Announcements",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/icons-02.svg'),
            label: "Sermons",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/icons-03.svg'),
            label: "Prayers",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/icons-04.svg'),
            label: "Give",
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}