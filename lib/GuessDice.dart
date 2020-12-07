
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'selectionpage.dart';

class GuessDice extends StatefulWidget {
  @override
  _GuessDiceState createState() => _GuessDiceState();
}

class _GuessDiceState extends State<GuessDice> {



  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              
              Expanded(
                  flex: 2,
                  child:


              Text("Guess the Number",style: TextStyle(fontSize: 30.0),)

              ),
            Expanded(child:


            Text("3",style: TextStyle(fontSize: 50.0),)

            ),
              Expanded(child:


              Text("2",style: TextStyle(fontSize: 50.0),)

              ),
              Expanded(child:


              Text("4",style: TextStyle(fontSize: 50.0),)

              ),
              Expanded(child:


              Text("6",style: TextStyle(fontSize: 50.0),)

              ),

              Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.29,
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: RaisedButton(
                      onPressed: (){
                       //diceOne();

                      },
                      child: Text('Roll Dice'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.32,
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => selectionpage()),
                        );
                      },
                      child: Text('Home'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.29,
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: RaisedButton(
                      onPressed: (){
                        exit(0);
                      },
                      child: Text('Exit'),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


