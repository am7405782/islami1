import 'dart:async';

import 'package:flutter/material.dart';

import 'Home.dart';

class Splach_Screen extends StatefulWidget {
  static const roteName = "splach";

  @override
  State<Splach_Screen> createState() => _Splach_ScreenState();
}

class _Splach_ScreenState extends State<Splach_Screen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Home_Screen.roteName);
    });
    return Scaffold(
      body: Image.asset("assets/images/splash_light.png"),
    );
  }
}
