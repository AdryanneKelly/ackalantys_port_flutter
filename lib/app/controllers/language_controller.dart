import 'package:flutter/material.dart';

class LanguageController extends ChangeNotifier {
  bool isPortuguese = false;

  void toggleLanguage() {
    isPortuguese = !isPortuguese;
    notifyListeners();
  }
}
