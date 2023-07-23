import 'package:flutter/material.dart';
import 'package:islami_app/screen/Home.dart';
import 'package:islami_app/screen/SplachScreen.dart';
import 'package:islami_app/screen/Widget/Quran/SuranContent.dart';

import 'Utls/MyThem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "ialamiApp",
      debugShowCheckedModeBanner: false,
      initialRoute: Splach_Screen.roteName,
      routes: {
        Splach_Screen.roteName: (c) => Splach_Screen(),
        Home_Screen.roteName: (c) => Home_Screen(),
        SuranContent.roteName: (c) => SuranContent(),
      },
      theme: MyThemData.lightThem,
    );
  }
}
