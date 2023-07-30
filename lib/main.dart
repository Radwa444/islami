import 'package:flutter/material.dart';
import 'package:islami/provider.dart';
import 'package:islami/ui/Home_screen.dart';
import 'package:islami/ui/Home/quran_tap/NameSura.dart';
import 'package:islami/ui/Home/hadeth_tap/Hadeth.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:islami/ui/splash_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext) =>changeTheme(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<changeTheme>(context);
    return MaterialApp(
      routes: {
        Home_Screen.routeName: (BuildContext) => Home_Screen(),
        NameSura.routName: (BuildContext) => NameSura(),
        Hadeth.routName: (BuildContext) => Hadeth(),
        Splash_screen.routeName:(BuildContext)=> Splash_screen(),
      },
      initialRoute: Home_Screen.routeName,
      theme: MyThemeData.LigthTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: provider.themeData,
    );
  }
}
