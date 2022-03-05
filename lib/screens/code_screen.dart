// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:testt2/constants.dart';
import 'package:testt2/screens/screen2.dart';
import 'package:testt2/widgets/circle_container.dart';
import 'package:testt2/widgets/corner_circle.dart';
import 'package:testt2/widgets/custom_textfield.dart';
import 'package:testt2/widgets/digit_widget.dart';
import 'package:testt2/widgets/half_circle.dart';
import 'package:testt2/widgets/text.dart';
import 'package:testt2/widgets/twidget.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
            //half circle on the right
            alignment: Alignment(1.3, -0.8),
            child: CircleContainer(
                child: null, height: 160, width: 100, margin: EdgeInsets.zero)),
        Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CornerCircle(
                      bottomRight: Radius.circular(80),
                      topRight: Radius.elliptical(20, 40),
                      bottomLeft: Radius.elliptical(40, 20),
                      topLeft: Radius.zero),
                ),
                Row(
                  //(Track) Text
                  children: [
                    TWidget(),
                    CustomText(
                        text: "RACK", size: 14, fontWeight: FontWeight.bold)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Align(
                alignment: Alignment(-0.6, -0.7),
                child: CustomText(
                    text: "Welcome", size: 24, fontWeight: FontWeight.bold)),
            Align(
              alignment: Alignment(-0.46, 0),
              child: CustomText(
                  text: "Lets get started",
                  size: 21,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
                //Text Field of (Insert Code)
                style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                    color: Constants.appColor,
                    depth: -8,
                    border: NeumorphicBorder.none()),
                child: CustomTextField()),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Digit(text: "1"),
                Digit(text: "2"),
                Digit(text: "3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Digit(text: "4"),
                Digit(text: "5"),
                Digit(text: "6"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Digit(text: "7"),
                Digit(text: "8"),
                Digit(text: "9"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Digit(text: "*"),
                Digit(text: "0"),
                Digit(text: "#"),
              ],
            ),
            Text(
              //(Resend code)
              "Resend Code",
              style: TextStyle(
                  color: Color.fromRGBO(25, 53, 102, 1),
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
            Container(
                //Confirm Button
                margin: EdgeInsets.only(top: 20),
                width: 134,
                height: 57,
                decoration: BoxDecoration(
                    color: Constants.appColor,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                        color: Constants.shadowColor,
                        blurRadius: 6,
                      )
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Screen2()));
                    },
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 53, 102, 1),
                          fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ]),
    );
  }
}
