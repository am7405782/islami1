import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/page/HomeSreen.dart';
import 'package:weather/provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (context) {
      return WeatherProvider();

    },
    child:  MaterialApp(
      title: "Weather",
      debugShowCheckedModeBanner: false,
      home: HomeSreen(),
    ),
    );

  }

}