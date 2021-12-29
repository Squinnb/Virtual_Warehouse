import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.nunito().fontFamily,
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontSize: 18),
    button: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);
