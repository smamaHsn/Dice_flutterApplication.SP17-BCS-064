import 'package:dice_2ndsesional/page1.dart';
import 'package:dice_2ndsesional/page2.dart';
//import 'package:dice_2ndsesional/Hardlevel.dart';
import 'package:dice_2ndsesional/initialRouter.dart';
import 'package:flutter/material.dart';
import 'selectionpage.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
    primaryColor: Color(0xFFE91E63),
    scaffoldBackgroundColor: Color(0xFFE91E63),
    ),
    home: selectionpage(),
    );
  }
}
//