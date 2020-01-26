import 'package:flutter/material.dart';
import 'main.dart';
import 'dobbel.dart';
import 'Scorebord.dart';
import 'credit.dart';
import 'tutor.dart';

class Home extends StatelessWidget {

/*
reset alle variablen van het spel

door alle variabelen op hun defauld value te zetten

 */
  void resetgame () {
          alledobbelsteenen = [0,0,0,0,0,0];
          selected = [false,false,false,false,false];
          worpenTeGaan = 3;
          selectedlist= [false,false,false,false,false,false,false,false,false,false,false,false];
          scorelist = [0,0,0,0,0,0,0,0,0,0,0,0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("yahtzee"),backgroundColor: Colors.black,),
      body:Container(child:ListView(children: <Widget>[
        SizedBox(
          width: 250,
          height: 125,
          child: Image.asset("assets/yahtzee.png"),
        ),
        SizedBox(height: 10,),
        RaisedButton(child: Text("play"),onPressed: (){

          //restet spel en navigeer naar het spel

          resetgame();
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => YahtzeeSpell()),
        );
        },),
        SizedBox(height: 10,),
        RaisedButton(child: Text("tutorial"),onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Tutor()),
        );

        },),
        SizedBox(height: 10,),
       RaisedButton(child: Text("credit"),onPressed: (){

         //navigeer naar credit screen

         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Credit()),
        );
        },),

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