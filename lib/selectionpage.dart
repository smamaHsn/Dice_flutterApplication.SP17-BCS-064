import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:io';
import 'package:dice_2ndsesional/easylevel.dart';
import 'package:dice_2ndsesional/Hardlevelfuntionality.dart';
import 'AboutUs.dart';

class selectionpage extends StatefulWidget {
  @override
  _selectionpageState createState() => _selectionpageState();
}

class _selectionpageState extends State<selectionpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Select The level"),
          ),
        drawer: Drawer(
         child: aboutus(),
        ),
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 300,
                  child: RaisedButton(
                    color: Color(0xFF536DFE),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => easylevel()),
                      );
                    },
                    child: Text(
                      " Simple Mode ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 90,
                  width: 300,
                  child: RaisedButton(
                      color: Color(0xFF536DFE),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hardlevel()),
                      );
                    },
                    child: Text(
                      " Hard Mode ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 90,
                  width: 300,
                  child: RaisedButton(
                      color: Color(0xFF536DFE),
                    onPressed: () {
                      exit(0);
                    },
                    child: Text(
                      "    Exit    ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
