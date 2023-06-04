import 'package:flutter/material.dart';

class MyThemeData {
  static const Color prmaryColorOfLigthTheme = Color(0xFFB7935F);
  static const Color prmaryColorOfDarkTheme = Colors.amber;
  static const Color mainColorOfDark = Color(0xFF141a2e);
  static var LigthTheme = ThemeData(
    cardColor: prmaryColorOfLigthTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(prmaryColorOfLigthTheme),
    )),
    iconTheme: IconThemeData(color: Colors.black),
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: prmaryColorOfLigthTheme),
    primaryColor: prmaryColorOfLigthTheme,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: TextStyle(
          fontSize: 35,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'ElMessiri'),
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline5: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
          fontFamily: 'ElMessiri'
      ),
      bodyText1:TextStyle(

          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: 'ElMessiri'
      ),
      bodyText2:TextStyle(

          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: 'DTHULUTH'
      ),
    ),
  );
  static var DarkTheme = ThemeData(
    cardColor: mainColorOfDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(prmaryColorOfDarkTheme),
    )),
    iconTheme: IconThemeData(color: Colors.white),
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: prmaryColorOfDarkTheme),
    primaryColor: prmaryColorOfDarkTheme,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: prmaryColorOfDarkTheme,
        unselectedItemColor: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'ElMessiri'),
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline5: TextStyle(

          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          fontFamily: 'ElMessiri'
      ),
      bodyText1:TextStyle(

          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: 'ElMessiri'
      ),
      bodyText2:TextStyle(

          color: Colors.amber,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: 'DTHULUTH'
      ),
    ),
  );
  static ThemeMode themeMode = ThemeMode.dark;
}
