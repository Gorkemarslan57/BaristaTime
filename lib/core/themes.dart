import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const colors = {
  "primary": Color.fromARGB(255, 78, 52, 46),
  "onPrimary": Color.fromARGB(255, 255, 247, 230),
  "secondary": Color.fromARGB(255, 121, 85, 72),
  "onSecondary": Color.fromARGB(255, 255, 230, 204),
  "surface": Color.fromARGB(255, 244, 235, 224),
  "onSurface": Color.fromARGB(255, 77, 42, 33),
  "success": Color.fromARGB(255, 160, 100, 80),
  "error": Color.fromARGB(255, 128, 57, 50),
  "onError": Color.fromARGB(255, 255, 247, 230),
  
};

const darkColors = {
  "primary": Color.fromARGB(255, 54, 32, 29),
  "onPrimary": Color.fromARGB(255, 216, 196, 177),
  "secondary": Color.fromARGB(255, 92, 64, 51),
  "onSecondary": Color.fromARGB(255, 255, 230, 204),
  "surface": Color.fromARGB(255, 44, 30, 25),
  "onSurface": Color.fromARGB(255, 224, 208, 192),
  "success": Color.fromARGB(255, 160, 100, 80),
  "error": Color.fromARGB(255, 128, 57, 50),
  "onError": Color.fromARGB(255, 216, 196, 177),
};
