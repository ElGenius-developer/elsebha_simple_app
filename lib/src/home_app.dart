

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"السبحة الالكترونيه" ,
      color: Colors.white,
     home: MyHomeApp(title: "السبحة الالكترونيه",
     ),
    );


  }
}
class MyHomeApp extends StatefulWidget {
  final String title;

  MyHomeApp({ this.title});

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {

    int _counter=0;
  void  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void  _returnCounterToZero() {
      setState(() {
        _counter=0;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.red,
        title:Center(child:
        Text(
          widget.title,
          style:TextStyle(
              color: Colors.white,
              shadows: [Shadow(color: Colors.indigoAccent,blurRadius: 23),],
              fontSize: 28,


        ),
        )),

        ),
      body:  Container(
       // constraints: BoxConstraints.expand() ,
         decoration: BoxDecoration(
             image: DecorationImage(
              image: AssetImage("assets/image.jpg"),
              //scale: 200,
              fit: BoxFit.cover,
            )
        ),
        child:
        Container(
                //alignment:Alignment(0.0,-0.8),
              child:Column(
    children:  [
                  Container(
                   child: Text('$_counter',
                      style:TextStyle(
                        height: 3.5,
                        fontSize: 50,
                        color: Colors.white,
                      ) ,
                    ),
                  ),
              ListTile(
                title:Center(
                  child: Center(
                    heightFactor: 7,
                    child: (
                FlatButton(
                height: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)
                    ),
                color:Colors.black12,
                child: Text(
                  'سُبحَان اللّه'
                ,
                style: TextStyle(
                  fontSize: 30,

                  color: Colors.amber

                ),
                ),
              onPressed:(){
                _incrementCounter();
              },


                )
                    ),
                  )
                ),


              ),

               ],

              ),
        ),
      ),
     floatingActionButton:FloatingActionButton(

       backgroundColor: Colors.red,
        child: Icon(Icons.refresh
        ,
        size: 40,
          ),
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20),
           side: BorderSide(color: Colors.red)

       ),
       onPressed: () =>_returnCounterToZero(),
       splashColor: Colors.brown,
       tooltip: 'Reset',
     ),




    );
  }
}