import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/Home/hadeth_tap/body_hadeth.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:provider/provider.dart';

import '../../../provider.dart';

class Hadeth extends StatefulWidget {
  static const String routName = 'hadeth';

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<String> group = [];

  String read = '';
  String title = '';
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<changeTheme>(context);
    int red = ModalRoute.of(context)?.settings.arguments as int;
    if (read.isEmpty) {
      readHadeth(red);
    }

    print(red);
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.themeData==ThemeMode.light
                    ? 'assets/default_bg.png'
                    : 'assets/dark_bg.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامى',
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  color: provider.themeData==ThemeMode.light
                      ? Colors.white
                      : Theme.of(context).cardColor,
                  elevation: 12,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23)),
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext, index) {
                        return Body_hadeth(read, title);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void readHadeth(int index) async {
    String text = await rootBundle.loadString("assets/hadeth/h$index.txt");
    group = text.trim().split('\n');
    title = group[0];
    print(title);
    group.removeAt(0);
    read = group.join();
    setState(() {});
  }
}
