
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'selectionpage.dart';
import 'GuessDice.dart';
class hardlevel extends StatefulWidget {
  @override
  _hardlevelState createState() => _hardlevelState();
}

class _hardlevelState extends State<hardlevel> {
  var upperDice = 1;


  void diceOne() {
    setState(() {
      upperDice = Random().nextInt(6) + 1;
      print(upperDice);

    });
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

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/dice1.png'),
              ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GuessDice()),
                      );

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



//
// void main() => runApp(HardLevel());
//
// class HardLevel extends StatelessWidget {
// // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage();
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];
// //var random = new Random();
//   int randomIntForDiceOne = Random().nextInt(6);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepOrangeAccent,
//         body: Padding(
//           padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
//           child: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Image.asset('images/'+imageArray[randomIntForDiceOne], height: 150, width: 150,),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 60),
//                 child: RaisedButton(onPressed: changeImage,
//                   child: Text('Roll Dice'),
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
//
//   void changeImage() {
//     setState(() {
//       randomIntForDiceOne = Random().nextInt(6);
//     });
//   }
// }