import 'package:flutter/material.dart';

class StyleAyaat extends StatelessWidget {
  String name;
int number;

StyleAyaat(this.name,this.number);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$name(${number})',style: Theme.of(context).textTheme.bodyText2,textAlign: TextAlign.right,));
  }
}
