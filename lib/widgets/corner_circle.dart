// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../constants.dart';

class CornerCircle extends StatelessWidget {
  final bottomRight;
  final topRight;
  final bottomLeft;
  final topLeft;
  CornerCircle(
      {required this.bottomRight,
      required this.topRight,
      required this.bottomLeft,
      required this.topLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 60),
        height: 104,
        width: 111,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Constants.shadowColor,
                blurRadius: 20,
                offset: Offset(6, 6))
          ],
          // ignore: prefer_const_constructors
          color: Color.fromRGBO(236, 240, 243, 1),
          borderRadius: BorderRadius.only(
              bottomRight: bottomRight,
              topRight: topRight,
              bottomLeft: bottomLeft,
              topLeft: topLeft),
        ));
  }
}
