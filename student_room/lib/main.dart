import 'package:flutter/material.dart';
import 'package:student_room/splash_page.dart';
import 'package:student_room/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: backgroundColor,
      ),
      home: SplashPage(),
    );
  }
}
