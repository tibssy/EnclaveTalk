import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;
  Color _seedColor = Colors.purple;

  ThemeMode get themeMode => _themeMode;
  Color get seedColor => _seedColor;

  void changeThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  void changeSeedColor(Color color) {
    _seedColor = color;
    notifyListeners();
  }
}
