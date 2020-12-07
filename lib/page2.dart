import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'selectionpage.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var upperDice = 1;
  var lowerDice = 1;
  var sum;
  var winner;

  void diceOne() {
    setState(() {
      upperDice = Random().nextInt(6) + 1;
      lowerDice = Random().nextInt(6) + 1;
      checksum();
    });
  }
checksum(){
   sum=upperDice+lowerDice;
}
checkWinner(){
    if(upperDice>lowerDice)
      {
        winner=1;
      }
    else
      {
        winner=2;
      }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[

            Text("Winner is dice  $winner", style: TextStyle(fontSize: 30.5, color: Colors.white),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0), 
                child: Image.asset('images/dice$upperDice.png'),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/dice$lowerDice.png'),
              ),
            ),
            Text("Sum is = $sum", style: TextStyle(fontSize: 30.5, color: Colors.white),),
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
                      diceOne();
                      checkWinner();
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
    );
  }
}
