import 'package:flutter/material.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:provider/provider.dart';

import '../../../provider.dart';

class sebha_screen extends StatefulWidget {
  @override
  State<sebha_screen> createState() => _sebha_screenState();
}

class _sebha_screenState extends State<sebha_screen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<changeTheme>(context);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Stack(
            children: [
              const Center(
                  child: SizedBox(
                width: 200,
                height: 350,
              )),
              Positioned(
                  top: 30,
                  right: 150,
                  child:
                      Image(image: AssetImage(provider.themeData==ThemeMode.light?
                          'assets/head_sebha_logo.png':'assets/head_sebha_dark.png'))),
              Positioned(
                  top: 110,
                  right: 90,
                  child: Image(image: AssetImage(provider.themeData==ThemeMode.light?
                      'assets/body_sebha_logo.png':'assets/body_sebha_dark.png')))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'عدد التسبيحات',
            style:Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          Card( elevation: 10,

            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 60,
              height: 70,

              child: Center(
                  child: Text(
                '$number',
                style: Theme.of(context).textTheme.bodyText1,
              )),
            ),
          ),SizedBox(height: 20,),
          ElevatedButton(onPressed: (){number++;setState(() {

          });},child: Text(
            'سبحان الله',
            style: Theme.of(context).textTheme.bodyText1,
          ))
        ],
      )),
    );
  }
}
//
//Image(image: AssetImage('assets/head_sebha_logo.png')))
