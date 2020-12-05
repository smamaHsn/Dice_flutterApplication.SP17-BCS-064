import 'package:dice_2ndsesional/page1.dart';
import 'package:dice_2ndsesional/page2.dart';
import 'package:dice_2ndsesional/Hardlevel.dart';
import 'package:dice_2ndsesional/initialRouter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget{
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InitialRoute()),
                    );
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

