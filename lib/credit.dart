import 'package:flutter/material.dart';

class Credit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("yahtzee"),backgroundColor: Colors.black,),
      body:Container(child:ListView(children: <Widget>[
        Padding(child: 
          Text("made by kevinveld2001. \n"+
          "don't use for commercial use!\n"+
          "I don't steal your data.",style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
            padding: EdgeInsets.all(20),
          )

      ],),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          topRight: const Radius.circular(20.0)),
      ),
      
    ),

    );
  }
}