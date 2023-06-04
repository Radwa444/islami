import 'package:flutter/material.dart';
import 'package:islami/provider.dart';
import 'package:provider/provider.dart';

class Setting_screen extends StatefulWidget {



  @override
  State<Setting_screen> createState() => _Setting_screenState();
}

class _Setting_screenState extends State<Setting_screen> {
  List<String> listTheme = ["light", 'dark'];

  String Selected = 'light';

  @override
  Widget build(BuildContext context) {
    var proveter=Provider.of<changeTheme>(context);
    return  Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Language',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Theme',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const Spacer(),
                    DropdownButton<String>(
                      value: Selected,
                      items:listTheme
                          .map((Theme) => DropdownMenuItem(
                        value:Theme,
                        child: Text(
                          Theme,
                          style: TextStyle(fontSize: 20),
                        ),
                      ))
                          .toList(),
                      onChanged: ( theme) {
                        setState(() {
                          Selected=theme!;
                          if(Selected=='light'){
                            proveter.changeThemeLight();
                          }else{
                            proveter.changeThemedark();
                          }
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
