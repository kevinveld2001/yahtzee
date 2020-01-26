/*
name: yahtzee
made by: kevinveld2001
github: https://github.com/kevinveld2001

wat is het:
op school moesten we een yahtzee spel maken.
ik heb beslooten om het te maken met flutter.

licence:
u mag dit product gratis gebruiken/inlezen maar je mag het niet doorverkoopen
of op een andere manier geld aan verdienen zonder toestemming.
 */

import 'package:flutter/material.dart';
import 'dobbel.dart';
import 'Scorebord.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Home() );
  }
}



class YahtzeeSpell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("yahtzee"),backgroundColor: Colors.black,),
      body:Container(child:ListView(children: <Widget>[
        
        Dobbel(),

      ],),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          topRight: const Radius.circular(20.0)),
      ),
      
    ),
    floatingActionButton: FloatingActionButton(child: Icon(Icons.assignment_turned_in),
      onPressed: (){
        //navigeer naar scorescreen 
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Scorebord()),
        );
      },
    ),
    );
  }
}