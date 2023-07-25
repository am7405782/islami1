import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String Language = "en";

  void changeTheam(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  void ChageLAguage(String lang) {
    Language = lang;
    notifyListeners();
  }
}
