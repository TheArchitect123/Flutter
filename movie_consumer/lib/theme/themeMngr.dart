import 'package:flutter/material.dart';

class ThemeMngr {
  static ThemeData getApplicationWideTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
