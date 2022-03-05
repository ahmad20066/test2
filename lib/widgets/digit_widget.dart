// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testt2/constants.dart';
import 'package:testt2/widgets/circle_container.dart';

class Digit extends StatelessWidget {
  String text;
  Digit({required this.text});

  @override
  Widget build(BuildContext context) {
    return CircleContainer(
      margin: EdgeInsets.fromLTRB(20, 20, 30, 15),
      height: 40,
      width: 40,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(25, 53, 102, 1)),
      ),
    );
  }
}
