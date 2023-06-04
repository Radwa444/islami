import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/Home/quran_tap/StyleAyaat.dart';
import 'package:islami/ui/MyThemeData.dart';

class NameSura extends StatefulWidget {
  static const String routName = 'SURA';

  @override
  State<NameSura> createState() => _NameSuraState();
}

class _NameSuraState extends State<NameSura> {
  List<String> Ayaat = [];

  @override
  Widget build(BuildContext context) {
    var ard = ModalRoute.of(context)?.settings.arguments as NameSuraAndnumber;

    if (Ayaat.isEmpty) //So that it doesn't happen loop
      readSura(ard.number);
    // group += Ayaat[ard.number];
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.themeMode == ThemeMode.light
                  ? 'assets/default_bg.png'
                  : 'assets/dark_bg.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(ard.name),
            ),
            body: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Card(
                      color: MyThemeData.themeMode == ThemeMode.light
                          ? Colors.white
                          : Theme.of(context).cardColor,
                      elevation: 12,
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23)),
                      child: Ayaat.isEmpty
                          ? Center(child: CircularProgressIndicator())
                          : ListView.separated(
                              itemCount: Ayaat.length - 1,
                              itemBuilder: (BuildContext, index) {
                                return StyleAyaat(Ayaat[index], index + 1);
                              },
                              separatorBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  margin: EdgeInsets.all(20),
                                  width: double.infinity,
                                  height: 3,
                                  color: Theme.of(context).primaryColor,
                                );
                              },
                            ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void readSura(int index) async {
    String text = await rootBundle.loadString("assets/folder/${index}.txt");
    Ayaat = text.split('\n');
    Ayaat.removeWhere((item) => item.isEmpty);

    setState(() {});
  }
}

class NameSuraAndnumber {
  String name;
  int number;
  NameSuraAndnumber(this.name, this.number);
}
