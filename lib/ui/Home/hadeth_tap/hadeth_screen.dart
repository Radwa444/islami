import 'package:flutter/material.dart';
import 'package:islami/ui/Home/hadeth_tap/Hadeth.dart';
class hadeth_screen extends StatelessWidget {

int numberHadeth=0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [Image(image: AssetImage('assets/hadeth_logo.png')),
      Container(
        width: double.infinity,
        height: 3,
        color: Theme.of(context).primaryColor,
      ),
      Center(
        child: Text(
          'اﻷحاديث',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontFamily: 'ElMessiri'),
        ),
      ),
      Container(
        width: double.infinity,
        height: 3,
        color: Theme.of(context).primaryColor,
      ),
      Expanded(child: ListView.builder(itemCount: 50,itemBuilder: (BuildContext,index){
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell( onTap:(){
              Navigator.pushNamed(context, Hadeth.routName,arguments:index+1 );
            } ,
              child: Text(
                ' ${index+1}الحديث رقم ',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,fontFamily: 'ElMessiri'),
              ),
            ),
          ),
        )
          ;
      }))
    ],)
    ;
  }
}
