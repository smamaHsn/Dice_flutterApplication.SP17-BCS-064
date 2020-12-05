import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dice_2ndsesional/page1.dart';
class InitialRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Choose One Option"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      MaterialPageRoute(builder: (context) => SecondRoute());
                    },
                    child: Text(
                      "Flat Button",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )),
              Container(
                  child: const Text.rich(
                    TextSpan(
                      text: '', // default text style
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Developed by ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Samama Hasan(SP17-BCS-064)',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
