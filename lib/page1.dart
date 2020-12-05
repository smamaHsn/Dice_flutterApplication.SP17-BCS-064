import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About us"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  child: const Text.rich(
                    TextSpan(
                      text: '', // default text style
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Supported by ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'BZ Financial',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
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
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(onPressed: MainMenu,
                  child: Text('Exit Game'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void MainMenu() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel()));
    });
    Padding(
      padding: const EdgeInsets.only(top: 60),
      child: RaisedButton(
        child: Text('Check Winner Dice'),
        onPressed:() {
          showAlertDialog(context);
        },
      ),
    ),
  }

}
showAlertDialog(BuildContext context)
{
  if(randomIntForDiceOne >= randomIntForDiceTwo) {
    AlertDialog alert = AlertDialog(
      title: Text("Winner Dice :", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.blue),),
      content: Text("Dice One is Greater ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.indigoAccent),),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  if(randomIntForDiceOne < randomIntForDiceTwo) {
    AlertDialog alert = AlertDialog(
      title: Text("Winner Dice :", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.yellow),),
      content: Text("Dice Two is Greater ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.cyanAccent),),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
