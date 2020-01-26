import 'package:flutter/material.dart';


class Tutor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("tutorial"),backgroundColor: Colors.black,),
      body:Container(child:ListView(children: <Widget>[
        Padding(child: 
          Text("tutorial gaat hier \n",
          style: TextStyle(
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