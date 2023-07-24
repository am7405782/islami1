import 'package:flutter/material.dart';
import 'package:islami_app/Utls/MyThem.dart';

import 'Widget/Quran/Quran.dart';
import 'Widget/Setting.dart';
import 'Widget/hedith/hadith.dart';
import 'Widget/radio.dart';
import 'Widget/sebha.dart';

class Home_Screen extends StatefulWidget {
  static const roteName = "home";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int index = 0;
  List<Widget> Screen = [
    Quran_Screen(),
    hedith(),
    sebha(),
    radio(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            Theme.of(context).colorScheme.brightness == Brightness.dark
                ? "assets/images/background_image_dark.png"
                : "assets/images/background.png",
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "islami",
                style: MyThemData.lightThem.textTheme.bodyLarge,
              ),
            ),
          ),
          body: Screen[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
                print(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/quran.png",
                  ),
                ),
                label: "quran",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/hedith_icon.png"),
                ),
                label: "hedith",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha_icon.png"),
                ),
                label: "sebha",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio.png"),
                ),
                label: "radio",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
