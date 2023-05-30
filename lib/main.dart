import 'package:flutter/material.dart';
import 'package:islami/ui/Home_screen.dart';
import 'package:islami/ui/Home/quran_tap/NameSura.dart';
import 'package:islami/ui/Home/hadeth_tap/Hadeth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home_Screen.routeName: (BuildContext) => Home_Screen(),
        NameSura.routName: (BuildContext) => NameSura(),
        Hadeth.routName: (BuildContext) => Hadeth(),
      },
      initialRoute: Home_Screen.routeName,
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFFB7935F)) ,)),
          iconTheme: IconThemeData(color: Colors.black),
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: Color(0xFFB7935F)),
          primaryColor: Color(0xFFB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'ElMessiri'),
            centerTitle: true,
          )),
    );
  }
}
