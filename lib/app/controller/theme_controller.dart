import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  bool isLight = false;

  void toggleTheme() {
    isLight = !isLight;
    notifyListeners();
  } 
}
