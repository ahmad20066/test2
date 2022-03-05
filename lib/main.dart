import 'package:flutter/material.dart';
import 'package:testt2/screens/code_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => SafeArea(
        child: child!,
      ),
      home: CodeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(236, 240, 243, 1),
      ),
    );
  }
}
