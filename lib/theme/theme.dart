import 'package:flutter/material.dart';

class ThemeApp {
  final white = ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(
          fontFamily: 'ISW',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xffF4F4F4)),
      headline2: TextStyle(
          fontFamily: 'ISW',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xffF4F4F4)),
      headline3: TextStyle(
          fontFamily: 'ISW',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xffF4F4F4)),
    ),
  );
  final black = ThemeData(
      textTheme: TextTheme(
    headline1: TextStyle(
        fontFamily: 'ISW',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff202020)),
    headline2: TextStyle(
        fontFamily: 'ISW',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff202020)),
    headline3: TextStyle(
        fontFamily: 'ISW',
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Color(0xff202020)),
    headline4: TextStyle(
        fontFamily: 'ISWP',
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Color(0xff202020)),
    headline5: TextStyle(
        fontFamily: 'ISWP',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xff202020)),
  ));
  final blu = ThemeData(
      textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: 'ISW',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xff332FD0)),
          headline2: TextStyle(
              fontFamily: 'ISW',
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff332FD0))));
  final grey = ThemeData(
      textTheme: TextTheme(
    headline1: TextStyle(
        fontFamily: 'ISW',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff7E7E7E)),
    headline2: TextStyle(
        fontSize: 16,
        fontFamily: 'ISW',
        color: Color(0xff7E7E7E),
        fontWeight: FontWeight.w400),
    headline3: TextStyle(
        fontSize: 16,
        fontFamily: 'ISW',
        color: Color(0xff7E7E7E),
        fontWeight: FontWeight.w700),
  ));
  final red = ThemeData(
      textTheme: TextTheme(
    headline1: TextStyle(
        fontFamily: 'ISW',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xffFF1E00)),
  ));
}
