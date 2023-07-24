import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void changeTheam(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}
