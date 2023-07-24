import 'package:flutter/material.dart';
import 'package:islami_app/screen/Home.dart';
import 'package:islami_app/screen/SplachScreen.dart';
import 'package:islami_app/screen/Widget/Quran/SuranContent.dart';
import 'package:islami_app/screen/Widget/hedith/HadithContent.dart';
import 'package:islami_app/screen/logic/Myprovider.dart';
import 'package:provider/provider.dart';

import 'Utls/MyThem.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      title: "ialamiApp",
      debugShowCheckedModeBanner: false,
      initialRoute: Splach_Screen.roteName,
      routes: {
        Splach_Screen.roteName: (c) => Splach_Screen(),
        Home_Screen.roteName: (c) => Home_Screen(),
        SuranContent.roteName: (c) => SuranContent(),
        HadihContent.roteName: (c) => HadihContent(),
      },
      theme: MyThemData.lightThem,
      darkTheme: MyThemData.darkTheam,
      themeMode: provider.themeMode,
    );
  }
}
