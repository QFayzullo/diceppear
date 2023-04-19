import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text('Dicee'),
      ),
      body: DiceApp(),
    ),
  ));
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber=2;
  int rightImageNumber=1;

  void changeStateDice(){
    setState(() {
      rightImageNumber=Random().nextInt(6)+1;
      leftImageNumber=Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                changeStateDice();
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),Expanded(
            child: TextButton(
              onPressed: (){
                changeStateDice();
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

