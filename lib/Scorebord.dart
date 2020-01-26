import 'package:flutter/material.dart';
import 'dobbel.dart';

class Scorebord extends StatefulWidget {
  @override
  _ScorebordState createState() => _ScorebordState();
}





List<bool> selectedlist= [false,false,false,false,false,false,false,false,false,false,false,false];
List<int> scorelist = [0,0,0,0,0,0,0,0,0,0,0,0];

class _ScorebordState extends State<Scorebord> {
  void goback(){
      worpenTeGaan = 3;
      alledobbelsteenen = [0,0,0,0,0];
       selected = [false,false,false,false,false];
       Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Score"),backgroundColor: Colors.black,),
      body: Container(
        decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          topRight: const Radius.circular(20.0)),
      ),
      child: ListView(
          children: <Widget>[
            GestureDetector(onTap:(){
              setState(() {
                
                  /*
                  select element,
                  slaat de waarde op in een andere array
                  ga terug (reset dobbel steen)
                   */ 
                   scorelist[0] = steenCount(1,0);
                   selectedlist[0] = true;
                   goback();
              
              });
            },child:
            ListTile(
              title: Text("dobbel 1:",style: TextStyle(color: Colors.white)),
              subtitle: Text(steenCount(1,0).toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[0] ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white,),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                  select element,
                  slaat de waarde op in een andere array
                  ga terug (reset dobbel steen)
                   */   
                   scorelist[1] = steenCount(2,1);
                   selectedlist[1] = true;
                   goback();
              
              });
            },child:
            ListTile(
              title: Text("dobbel 2:",style: TextStyle(color: Colors.white),),
              subtitle: Text(steenCount(2,1).toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[1] ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                  select element,
                  slaat de waarde op in een andere array
                  ga terug (reset dobbel steen)
                   */ 
                   scorelist[2] = steenCount(3,2);
                   selectedlist[2] = true;
                   goback();
              
              });
            },child:
            ListTile(
              title: Text("dobbel 3:",style: TextStyle(color: Colors.white)),
              subtitle: Text(steenCount(3,2).toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[2] ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                  select element,
                  slaat de waarde op in een andere array
                  ga terug (reset dobbel steen)
                   */ 
                   scorelist[3] = steenCount(4,3);
                   selectedlist[3] = true;
                   goback();
              
              });
            },child:
            ListTile(
              title: Text("dobbel 4:",style: TextStyle(color: Colors.white)),
              subtitle: Text(steenCount(4,3).toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[3]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                  select element,
                  slaat de waarde op in een andere array
                  ga terug (reset dobbel steen)
                   */ 
                   scorelist[4] = steenCount(5,4);
                  selectedlist[4] = true;
                  goback();
              
              });
              
            },child: 
            ListTile(
              title: Text("dobbel 5:",style: TextStyle(color: Colors.white)),
              subtitle: Text(steenCount(5,4).toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[4] ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                  select element,
                  slaat de waarde op in een andere array
                  ga terug (reset dobbel steen)
                   */ 
                   scorelist[5] = steenCount(6,5);
                   selectedlist[5] = true;
                    goback();
              
              });
              
            },child: 
            ListTile(
              title: Text("dobbel 6:",style: TextStyle(color: Colors.white)),
              subtitle: Text(steenCount(6,5).toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[5]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                    kijkt of alle 5de dobbel steenen hetzelfde zijn
                    dan sla score op 
                    selecteer element 
                    en ga terug
                   */
                  if(!selectedlist[6] ){
                   if(ofAKind(5)){
                   scorelist[6] = 50;
                   selectedlist[6] = true;

                   goback();
                   }
                  }
              });
            },child:
            ListTile(
              title: Text("yahtzee:",style: TextStyle(color: Colors.white)),
              subtitle: Text(selectedlist[6]  ?scorelist[6].toString() :ofAKind(5) ==true ?'50':"0",style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[6]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                    kijkt of 3 dobbel steenen hetzelfde zijn
                    dan sla score op 
                    selecteer element 
                    en ga terug
                   */
                  if(!selectedlist[7] ){
                   if(ofAKind(3)){
                   scorelist[7] = dobbelcounter();
                   selectedlist[7] = true;

                   goback();
                   }
                  }
              });
            },child:
            ListTile(
              title: Text("3 of a kind:",style: TextStyle(color: Colors.white)),
              subtitle: Text(selectedlist[7]  ?scorelist[7].toString() :ofAKind(3) ?dobbelcounter().toString():"0",style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[7]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                    kijkt of  4 dobbel steenen hetzelfde zijn
                    dan sla score op 
                    selecteer element 
                    en ga terug
                   */
                  if(!selectedlist[8] ){
                   if(ofAKind(4)){
                   scorelist[8] = dobbelcounter();
                   selectedlist[8] = true;

                   goback();
                   }
                  }
              });
            },child:
            ListTile(
              title: Text("4 of a kind:",style: TextStyle(color: Colors.white)),
              subtitle: Text(selectedlist[8]  ?scorelist[8].toString() :ofAKind(4) ?dobbelcounter().toString():"0",style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[8]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                    straat cheker 
                   */
                  if(!selectedlist[9] ){
                   if(straight(4)){
                   scorelist[9] = 30;
                   selectedlist[9] = true;

                   goback();
                   }
                  }
              });
            },child:
            ListTile(
              title: Text("kleine straat:",style: TextStyle(color: Colors.white)),
              subtitle: Text(selectedlist[9]  ?scorelist[9].toString() :straight(4) ?"30":"0",style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[9]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                    straat cheker 
                   */
                  if(!selectedlist[10] ){
                   if(straight(5)){
                   scorelist[10] = 40;
                   selectedlist[10] = true;

                   goback();
                   }
                  }
              });
            },child:
            ListTile(
              title: Text("groote straat:",style: TextStyle(color: Colors.white)),
              subtitle: Text(selectedlist[10]  ?scorelist[9].toString() :straight(5) ?"40":"0",style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[10]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
            GestureDetector(onTap:(){
              setState(() {
                  /*
                    straat cheker 
                   */
                  if(!selectedlist[11] ){
                   
                   scorelist[11] = dobbelcounter();
                   selectedlist[11] = true;

                   goback();
                   
                  }
              });
            },child:
            ListTile(
              title: Text("kans:",style: TextStyle(color: Colors.white)),
              subtitle: Text(selectedlist[11]  ?scorelist[11].toString() :dobbelcounter().toString(),style: TextStyle(color: Colors.white)),
              leading: Icon( selectedlist[11]  ?  Icons.assignment_turned_in : Icons.bookmark_border,color: Colors.white),
            ),
            ),
          ],
        ),
        
      
        
      ),
    );
  }
}

/*
kijked of het al geselekteert is.
zo niet dan:

dan telt de dat nummer bij elkaar op en 
returned het.

 */
int steenCount(int number, int index){

  if (selectedlist[index]){
    return scorelist[index];
  }else{
  int counter =0;

      for (int i =0 ; i< 5; i++ ){
        if (alledobbelsteenen[i] == number){
          counter += alledobbelsteenen[i];
        }
      }
      return counter;
  }
}

/*
kijkt eerst of er al gegooit is
 door te kijken of de eerste dobbelsteen niet nul is.

dan kijkt ie door 2 for loops hoeveel de zelfde erzijn.

als dit hooger is dan je (numbers) input dan returnt ie true

 */
bool ofAKind (numbers){
if(alledobbelsteenen[0] !=0){
  for(int i=0;i<alledobbelsteenen.length; i++){
    int count = 0;
    int thenum =alledobbelsteenen[i];
    for(int a=0;a<alledobbelsteenen.length; a++){
      if(thenum == alledobbelsteenen[a]){
        count++;
      }
    }
    if(count >= numbers){
      return true;
    }
  }
}

  return false;
}


bool straight (number){
  int count = 0 ;
  bool start = false;
  for(int i=0;i<=6;i++){
    if (alledobbelsteenen.contains(i)){
      count++;
      start = true;
    }else if(!alledobbelsteenen.contains(i) && start){
      return count >= number ? true : false;
    }
  }
  return false;
}

