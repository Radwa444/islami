import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class changeTheme extends ChangeNotifier{
  ThemeMode themeData=ThemeMode.light ;
 void changeThemedark(){
    themeData=ThemeMode.dark;
    notifyListeners();
  }
  changeThemeLight(){
    themeData=ThemeMode.light ;
    notifyListeners();
  }


}