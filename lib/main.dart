import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
void fun1(){
    leftdiicenum = Random().nextInt(6) + 1 ;
    rightdicenum = Random().nextInt(6) + 1;
  }
  @override
  int leftdiicenum = 3;
  int rightdicenum = 4;

  Widget build(BuildContext context) {

    return Center(
      child: Row(

        children: [

          Expanded(
            child: FlatButton(
              onPressed: (){
              setState(() {
                fun1();
              });
              },
              child: Image.asset('images/dice$leftdiicenum.png'),),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
              setState(() {
                rightdicenum = Random().nextInt(6) +1;
              });
              },
              child: Image.asset('images/dice$rightdicenum.png'),),
          ),
          Row(
            children: [

            ],
          )

        ],
      ),
    );
  }
}

