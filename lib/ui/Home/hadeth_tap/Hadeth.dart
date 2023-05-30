import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Hadeth extends StatefulWidget {
static const String routName='hadeth';

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
 List<String> group=[];
  String read='';
  @override
  Widget build(BuildContext context) {
  int red = ModalRoute.of(context)?.settings.arguments as int;
  if(read.isEmpty) {
      readHadeth(red);
    }

    print(red);
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/default_bg.png'), fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامى',
            ),
          ),
          body:Column(
            children: [Expanded(
              child: Card(
                elevation: 12,
                margin:
                EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)),
                child: ListView.builder(itemCount: 1,itemBuilder: (BuildContext,index){
                  return Text(
                    read,
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,fontFamily: 'ElMessiri'),textAlign: TextAlign.right,
                  );
                }),
              ),
            )],
          ) ,

        ),
      ),
    ) ;
  }

  void readHadeth(int index)async{
    String text= await rootBundle.loadString("assets/hadeth/h$index.txt");

    read=text;

    setState(() {

    });
}
}
