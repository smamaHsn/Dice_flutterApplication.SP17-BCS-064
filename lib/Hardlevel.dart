import 'dart:math';
import 'package:dice_2ndsesional/page1.dart';
import 'package:flutter/material.dart';
import 'package:dice_2ndsesional/Hardlevel.dart';


void main() => runApp(MyLevel());

class MyLevel extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed: changeLevel,
                  child: Text('Simple Level'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed: changeLeve2,
                  child: Text('Hard Level'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(onPressed: MainMenu,
                  child: Text('Exit Game'),
                ),
              ),
            ],
          ),
        )
    );
  }

  void changeLevel1() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel()));
    });
  }
  
}