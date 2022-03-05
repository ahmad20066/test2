// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:testt2/constants.dart';
import 'package:testt2/widgets/circle_container.dart';
import 'package:testt2/widgets/corner_circle.dart';
import 'package:testt2/widgets/half_circle.dart';
import 'package:testt2/widgets/text.dart';
import 'package:testt2/widgets/twidget.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          //half circle
          alignment: Alignment(-1, 0.35),
          child: HalfCircle(
            bottomLeft: Radius.zero,
            topLeft: Radius.zero,
            bottomRight: Radius.elliptical(160, 120),
            topRight: Radius.elliptical(150, 120),
            height: 96.0,
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleContainer(
                    //three lines widget
                    margin: EdgeInsets.fromLTRB(20, 20, 30, 15),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.dehaze,
                      color: Color.fromRGBO(25, 53, 102, 1),
                    )),
                Row(
                  //(track)
                  children: [
                    TWidget(),
                    CustomText(
                        text: "RACK", size: 14, fontWeight: FontWeight.bold),
                  ],
                ),
                CircleContainer(
                    //profile widget
                    margin: EdgeInsets.fromLTRB(20, 20, 30, 15),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.person,
                      color: Color.fromRGBO(25, 53, 102, 1),
                    ))
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Align(
              //(welcome back)
              alignment: Alignment(-0.2, 0),
              child: CustomText(text: '''     Welcom back
         dear asma ''', size: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Neumorphic(
              //Login and Logout button
              padding: EdgeInsets.all(40),
              style: NeumorphicStyle(
                  shadowDarkColor: Constants.shadowColor,
                  depth: -8,
                  color: Constants.appColor,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
              child: NeumorphicButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                padding: EdgeInsets.all(20),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    intensity: 1,
                    boxShape: NeumorphicBoxShape.circle()),
                child: Image(
                  image: AssetImage(
                    isLogin
                        ? "images/icon power.png"
                        : 'images/icon power 2.png',
                  ),
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomText(
                text: isLogin ? "Login" : "Logout",
                size: 20,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 50,
            ),
            Expanded(
              //circle in the corner
              child: Align(
                  alignment: Alignment(1.5, 1.3),
                  child: CircleContainer(
                    child: null,
                    height: 90,
                    width: 180,
                    margin: EdgeInsets.zero,
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}
