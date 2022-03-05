// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testt2/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 51,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Color.fromRGBO(151, 167, 195, 0.7)),
        borderRadius: BorderRadius.circular(20),
        color: Constants.appColor,
        //color: Color.fromRGBO(236, 240, 243, 1),
      ),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Insert Code",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(98, 124, 168, 1),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
            ),
          ),
          Image(
            image: AssetImage("images/Icon awesome-backspace.png"),
            height: 19,
            width: 31,
            color: Color.fromRGBO(25, 53, 102, 1),
          )
        ],
      ),
    );
  }
}
