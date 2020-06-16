import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Helpers
import 'package:movie_consumer/helpers/colorHelper.dart';

class ThemeMngr {
  static ThemeData getApplicationWideTheme(BuildContext context) {
    return ThemeData(
        backgroundColor: ColorHelper.darkThemeBackground(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ));
  }
}
