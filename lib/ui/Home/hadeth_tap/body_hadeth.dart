import 'package:flutter/material.dart';

class Body_hadeth extends StatelessWidget {
  String text;
  String title;
  Body_hadeth(this.text, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.right,
        ),
        Container(
            width: double.infinity,
            height: 3,
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.symmetric(horizontal: 30)),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText2,)
      ],
    );
  }
}
