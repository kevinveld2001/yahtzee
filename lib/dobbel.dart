import 'package:flutter/material.dart';
import 'dart:math';


List<int> alledobbelsteenen = [0,0,0,0,0];
List<bool> selected = [false,false,false,false,false];
int worpenTeGaan = 3;


class Dobbel extends StatefulWidget {
  
  @override
  _DobbelState createState() => _DobbelState();
}

class _DobbelState extends State<Dobbel> {

 void roll (){
    if(worpenTeGaan > 0){
      selected.contains(true) ? selected = selected : selected = [true,true,true,true,true];
      Random random = new Random();
        for(int i = 0;i < 5; i++){
          if(selected[i] == true){
            setState(() {
              alledobbelsteenen[i] = random.nextInt(6)+1;
            });
          }
        }
         worpenTeGaan--;
    }



  }

  
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      RaisedButton(child: Text("roll"),onPressed: (){
        roll();
        },),
      Text("$worpenTeGaan X worpen.",style: TextStyle(
        color: Colors.white,
        fontSize: 30
      ),),
      Padding(padding: EdgeInsets.only(top:30),child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Steen(1),
        Steen(2),
        Steen(3),
      ],)
      ,),

      Padding(padding: EdgeInsets.only(top:30),child: 
       Row(        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Steen(4),
        Steen(5),
      ],)
      ,)
     
      


    ],);
  }
}



class Steen extends StatefulWidget {
  
  Steen(
    this.steennum
  );
  final int steennum;
  @override
  _SteenState createState() => _SteenState();
}

class _SteenState extends State<Steen> {

  
  @override
  Widget build(BuildContext context) {
    if(selected[widget.steennum -1] == true){
    return GestureDetector(child:Container(
      decoration: BoxDecoration(
        boxShadow: [
            new BoxShadow(
              color: Colors.red,
              offset: new Offset(1.0, 1.0),
              blurRadius: 20
            )
          ],
        
      ),
      height: alledobbelsteenen[widget.steennum -1] == 0 ? 0 : 90,
      width: alledobbelsteenen[widget.steennum -1] == 0 ? 0 : 90,
      padding: EdgeInsets.all(10),
      child:FittedBox(child:Image.asset("assets/dobbel${alledobbelsteenen[widget.steennum -1].toString()}.png",),fit: BoxFit.fill,)
    ),
    onTap: (){
      setState(() {
        selected[widget.steennum -1] = !selected[widget.steennum -1];
      });
    },
    
    );
    }else{
    return GestureDetector(child:Container(
      
      height: alledobbelsteenen[widget.steennum -1] == 0 ? 0 : 90,
      width: alledobbelsteenen[widget.steennum -1] == 0 ? 0 : 90,
      padding: EdgeInsets.all(10),
      child:FittedBox(child:Image.asset("assets/dobbel${alledobbelsteenen[widget.steennum -1].toString()}.png",),fit: BoxFit.fill,)
    ),
    onTap: (){
      setState(() {
        selected[widget.steennum -1] = !selected[widget.steennum -1];
      });
    },
    
    );
    }
  }
}

//telt alle oogen bijelkaar op
int dobbelcounter (){
  int _count = 0;

  for(int i = 0;i < 5; i++){
    _count +=alledobbelsteenen[i];
  }

  return _count;
}


