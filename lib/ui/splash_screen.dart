import 'package:flutter/material.dart';
import 'package:islami/ui/Home_screen.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:provider/provider.dart';

import '../provider.dart';
class Splash_screen extends StatelessWidget {
  static const String routeName='splash';
  

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<changeTheme>(context);
    Future.delayed(Duration(seconds:30),(){
      Navigator.pushNamed(context, Home_Screen.routeName);
    });
    return SafeArea(
      child: Scaffold(
        body: Container(width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(provider.themeData==ThemeMode.light?
                  'assets/splash@3x.png':'assets/splashDark.png'), fit: BoxFit.fill)),),
      ),
    );
  }
}
