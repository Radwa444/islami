

import 'package:flutter/material.dart';

class Body_hadeth extends StatelessWidget {
 String text;
 String title;
 Body_hadeth(this.text,this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
         title,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri'),
          textAlign: TextAlign.right,
        ),Container(width: double.infinity,height: 3,color: Theme.of(context).primaryColor,margin: EdgeInsets.symmetric(horizontal: 30)),
        SizedBox(height: 20,),
        Text(
         text,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'ElMessiri'),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
