import 'package:flutter/material.dart';

class StyleAyaat extends StatelessWidget {
  String name;
int number;

StyleAyaat(this.name,this.number);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$name(${number})',style: TextStyle(fontSize: 30,fontFamily: 'ElMessiri'),textAlign: TextAlign.right,));
  }
}
