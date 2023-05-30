import 'package:flutter/material.dart';
import 'package:islami/ui/Home/quran_tap/NameSura.dart';
class Sura extends StatefulWidget {
  int number;
  String nameSura;
  Sura(this.number, this.nameSura);

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(height: 60,
          width: 123,
          alignment: Alignment.center,
          child: Text(
            '${widget.number}',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'ElMessiri'),
          ),
        ),
    Center(child: Container(height: 60,color: Theme.of(context).primaryColor,width: 3,)),
    InkWell( onTap:(){
      Navigator.pushNamed(context, NameSura.routName,arguments:NameSuraAndnumber('${widget.nameSura}',widget.number) );
      setState(() {

      });
    },
    child: Container(alignment: Alignment.center,
      height: 60,
      width: 120,
      child: Padding(padding: EdgeInsets.only(right: 30),
        child: Text(
          '${widget.nameSura}',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
      ),
    ),
    ),
      ],
    );
  }
}
