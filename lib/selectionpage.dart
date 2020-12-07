import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:io';
import 'package:dice_2ndsesional/easylevel.dart';

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
          child: ListView(
            children: <Widget>[
              ListTile(
                title: SafeArea(
                  child: Text('About Us',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400
                  ),),
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => InitialRoute()),
                  // );
                },
              ),
            ],
          ),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => hard()),
                      // );
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
