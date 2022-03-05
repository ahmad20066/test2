import 'package:flutter/material.dart';
import 'package:testt2/constants.dart';

class CircleContainer extends StatelessWidget {
  Widget? child;
  double height;
  double width;
  final margin;
  CircleContainer(
      {required this.child,
      required this.height,
      required this.width,
      required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Constants.appColor,
            boxShadow: [
              BoxShadow(
                  color: Constants.shadowColor,
                  blurRadius: 20,
                  offset: Offset(-1, -3))
            ]),
        child: child);
  }
}
