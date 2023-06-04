import 'package:flutter/material.dart';
import 'package:islami/ui/Home/sebha_tap/sebha_screen.dart';
import 'package:islami/ui/Home/quran_tap/quran_screen.dart';
import 'package:islami/ui/Home/hadeth_tap/hadeth_screen.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:provider/provider.dart';

import '../provider.dart';
import 'Home/Settings_tap/Settings_screen.dart';

class Home_Screen extends StatefulWidget {

  static const String routeName = 'home';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectTap = 0;

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<changeTheme>(context);
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.themeData==ThemeMode.light?
                     'assets/default_bg.png'
                    : 'assets/drak_bg.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectTap,
            onTap: (index) {
              setState(() {
                selectTap = index;
              });
            },

            items: [ BottomNavigationBarItem(
                backgroundColor: Theme.of(context).cardColor,
                icon: const ImageIcon(AssetImage('assets/icon_quran.png')),
                label: 'quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).cardColor,
                  icon: const ImageIcon(AssetImage('assets/icon_hadeth.png')),
                  label: 'hedeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).cardColor,
                  icon: const ImageIcon(AssetImage('assets/icon_sebha.png')),
                  label: 'sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).cardColor,
                  icon:const Icon(Icons.settings),
                  label: 'settings'),



            ],
          ),
          appBar: AppBar(
            title: Text(
              'اسلامى',
            ),
          ),
          body: Tap[selectTap],
        ),
      ),
    );
  }

  List<Widget> Tap = [
    quran_screen(),
    hadeth_screen(),
    sebha_screen(),
    Setting_screen()
    
  ];
}
