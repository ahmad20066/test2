import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double size;
  final fontWeight;
  CustomText(
      {required this.text, required this.size, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: Color.fromRGBO(25, 53, 102, 1),
          fontFamily: 'Poppins',
          fontWeight: fontWeight,
          letterSpacing: 2),
    );
  }
}
