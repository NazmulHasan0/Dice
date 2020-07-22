import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void diceNumberFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceNumberFace();
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceNumberFace();
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
