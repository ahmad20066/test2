// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testt2/constants.dart';

class HalfCircle extends StatelessWidget {
  final bottomLeft;
  final topLeft;
  final bottomRight;
  final topRight;
  final height;
  HalfCircle({
    required this.bottomLeft,
    required this.topLeft,
    required this.bottomRight,
    required this.topRight,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: height,
      decoration: BoxDecoration(
          color: Constants.appColor,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Constants.shadowColor,
                blurRadius: 8,
                offset: Offset(6, 3))
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: bottomLeft,
              topLeft: topLeft,
              topRight: topRight,
              bottomRight: bottomRight)),
    );
  }
}
