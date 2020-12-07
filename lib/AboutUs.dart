import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectionpage.dart';


class aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),

            child: Column(children: [
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text("About Me"),
              ),
              SizedBox(height: 80.0,),
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.check_circle_outline,
                  color: Colors.black,
                ),
                title: Text("SAMAMA HASAN", style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.check_circle_outline,
                  color: Colors.black,
                ),
                title: Text("SP17-BCS-064", style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text("smamahsn@gmail.com", style: TextStyle(fontSize: 20),),
              ),
            ]

            ),

          )
        )

      ],),


    );
  }
}
