import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    hintColor: Color.fromARGB(164, 204, 197, 185),
    inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xffccc5b9),
            )),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xffccc5b9),
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xffccc5b9),
            ))),
    iconTheme: const IconThemeData(
      color: Color(0xffd68658),
    ),
    shadowColor: Color.fromARGB(181, 214, 134, 88),
    cardColor: const Color(0xff303338),
    colorScheme: const ColorScheme.light(
        background: Color(0xff252a2f),
        primary: Color(0xffccc5b9),
        secondary: Color.fromARGB(255, 255, 222, 179),
        surface: Color(0xff2c313a),
        onSurface: Color(0xffd68658),
        shadow: Color(0xffeb5e28)),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Modam'),
        bodyMedium: TextStyle(fontFamily: 'Modam'),
        labelLarge: TextStyle(fontFamily: 'Modam'),
        labelMedium: TextStyle(fontFamily: 'Modam'),
        labelSmall: TextStyle(fontFamily: 'Modam'),
        titleMedium: TextStyle(fontFamily: 'Modam'),
        titleSmall: TextStyle(fontFamily: 'Modam'),
        titleLarge: TextStyle(fontFamily: 'Modam')));
