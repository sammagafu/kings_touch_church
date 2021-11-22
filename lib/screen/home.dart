import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kings_touch_church/constants/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kings_touch_church/model/ministries.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "homepage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 85, 25, 20),
      color: kPrimaryColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome !",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Elishirika Ndossi",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Incase you missed any sermon',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              height: 1,
              width: MediaQuery.of(context).size.width * 0.10,
              color: kSecondaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(5),
                  color: kContentColorLightTheme,
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.playCircle,
                          size: 40,
                          color: kPrimaryColor,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Watch",
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(5),
                  color: kSecondaryColor,
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.headphonesAlt,
                          color: kPrimaryColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Listen",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(5),
                  color: kSecondaryColor,
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.bookReader,
                          color: kPrimaryColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Read",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Events & Updates',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              height: 1,
              width: MediaQuery.of(context).size.width * 0.10,
              color: kSecondaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Material(
                    borderRadius: BorderRadius.circular(5),
                    color: kSecondaryColor,
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.calendarAlt,
                            color: kPrimaryColor,
                            size: 45,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Events",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(5),
                  color: kSecondaryColor,
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.bullhorn,
                          color: kPrimaryColor,
                          size: 45,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Updates",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Ministiries',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              height: 1,
              width: MediaQuery.of(context).size.width * 0.10,
              color: kSecondaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ministries.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  margin: EdgeInsets.only(right: 25),
                  child: Material(
                    borderRadius: BorderRadius.circular(5),
                    color: kSecondaryColor,
                    elevation: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        FaIcon(
                          FontAwesomeIcons.playCircle,
                          size: 40,
                          color: kPrimaryColor,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(ministries[index].name,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
