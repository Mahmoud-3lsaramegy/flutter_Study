// main lip to use flutter ;
// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';

//lunch point
void main(List<String> args) {
  runApp(one_screen());
}

class one_screen extends StatelessWidget {
  const one_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        //this main cloumn for format Screen
        body: Container(
          margin: EdgeInsets.only(top: 40, bottom: 40, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*
            blue container and   
             */
              Container(
                margin:
                    EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    "Hi I'm Mahmoud Elsaramegy",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 2, color: Colors.black),
                ),
              ),
              /*
            widght to show text and edit 
            style for text.... 
             */
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "Hi I'm Mahmoud Elsaramegy I Love Flutter Make Build  UI Esaier ; Welcome in Elsaramegy coding club 😎✌🤘This Store to All Code 👨‍💻Massage My Any Time 😍 👇",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              /*
            carde of  GUI tast 
            feedback carde 
             */
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          width: 100,
                          height: 20,
                          child: Row(
                            children: [
                              Staricon(Colors.yellowAccent),
                              Staricon(Colors.yellowAccent),
                              Staricon(Colors.yellowAccent),
                              Staricon(Colors.black),
                              Staricon(Colors.black),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 120,
                          ),
                          child: Text(
                            "17 review",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              Row(
                children: [
                  feedIcon(Colors.green, "Feed", "2 - 4",
                      Icons.account_circle_outlined)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Staricon(Color colo) {
  return Expanded(
    flex: 1,
    child: Icon(
      Icons.star,
      color: colo,
    ),
  );
}

Widget feedIcon(Color colord, String data1, String data2, Icons icons) {
  return Container(
    width: 100,
    height: 100,
    child: Column(children: [
      Icon(
        Icon.ico,
        color: colord,
      ),
      Text(
        data1,
        style: TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
      ),
      Text(
        data2,
        style: TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
      )
    ]),
  );
}
