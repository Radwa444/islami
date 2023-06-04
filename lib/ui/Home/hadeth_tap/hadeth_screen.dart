import 'package:flutter/material.dart';
import 'package:islami/ui/Home/hadeth_tap/Hadeth.dart';
import 'package:islami/ui/MyThemeData.dart';

class hadeth_screen extends StatelessWidget {
  int numberHadeth = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image(image: AssetImage('assets/hadeth_logo.png'))),
        Container(
          width: double.infinity,
          height: 3,
          color: Theme.of(context).primaryColor,
        ),
        Center(
          child: Text(
            'اﻷحاديث',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Hadeth.routName,
                              arguments: index + 1);
                        },
                        child: Text(
                          ' ${index + 1}الحديث رقم ',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}
