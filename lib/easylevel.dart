import 'package:flutter/material.dart';
import 'package:dice_2ndsesional/main.dart';
import 'package:dice_2ndsesional/selectionpage.dart';
import 'package:dice_2ndsesional/page2.dart';

class easylevel extends StatefulWidget {
  @override
  _easylevelState createState() => _easylevelState();
}

class _easylevelState extends State<easylevel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Dice Game By Smama'),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.teal,
                      Colors.cyanAccent,
                    ]
                ),
              ),
            ),
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
         body: DicePage(),
        ),
      ),

    );
  }
}

