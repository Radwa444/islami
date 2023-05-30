import 'package:flutter/material.dart';

class sebha_screen extends StatefulWidget {
  @override
  State<sebha_screen> createState() => _sebha_screenState();
}

class _sebha_screenState extends State<sebha_screen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Stack(
            children: [
              Center(
                  child: Container(
                width: 200,
                height: 350,
              )),
              Positioned(
                  top: 30,
                  right: 150,
                  child:
                      Image(image: AssetImage('assets/head_sebha_logo.png'))),
              Positioned(
                  top: 110,
                  right: 90,
                  child: Image(image: AssetImage('assets/body_sebha_logo.png')))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(
              fontSize: 33,
            ),
            textAlign: TextAlign.center,
          ),
          Card( elevation: 10,
            color: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 60,
              height: 70,

              child: Center(
                  child: Text(
                '$number',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              )),
            ),
          ),SizedBox(height: 20,),
          ElevatedButton(onPressed: (){number++;setState(() {

          });},child: Text(
            'سبحان الله',
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ))
        ],
      )),
    );
  }
}
//
//Image(image: AssetImage('assets/head_sebha_logo.png')))
