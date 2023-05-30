import 'package:flutter/material.dart';
import 'package:islami/ui/Home/radio_tap/radio_screen.dart';
import 'package:islami/ui/Home/sebha_tap/sebha_screen.dart';
import 'package:islami/ui/Home/quran_tap/quran_screen.dart';
import 'package:islami/ui/Home/hadeth_tap/hadeth_screen.dart';
class Home_Screen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectTap=0;

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/default_bg.png'), fit: BoxFit.fill)),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
           currentIndex: selectTap,
            onTap:(index) {

             setState(() {
                  selectTap=index;
             });
            },

            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/icon_radio.png')),label: 'radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/icon_sebha.png')),label: 'sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/icon_hadeth.png')),label: 'hedeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/icon_quran.png')),label: 'quran'),
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
  List<Widget> Tap=[radio_screen(),sebha_screen(),hadeth_screen(),quran_screen()];
}
