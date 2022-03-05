// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TWidget extends StatelessWidget {
  const TWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      alignment: Alignment.center,
      height: 21,
      width: 21,
      color: Color.fromRGBO(25, 53, 102, 1),
      child: Text(
        "T",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Color.fromRGBO(252, 252, 252, 1),
        ),
      ),
    );
  }
}
