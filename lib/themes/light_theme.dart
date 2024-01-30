import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
      background: Color(0xfffffcf2),
      primary: Color(0xffccc5b9),
      secondary: Color(0xff403d39),
      surface: Color(0xff252422),
      onSurface: Color(0xffeb5e28)),
  textTheme: TextTheme(titleLarge: GoogleFonts.abelTextTheme().titleLarge),
);
