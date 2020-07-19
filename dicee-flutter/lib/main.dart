import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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

int generate() => Random().nextInt(6) + 1;

class _DicePageState extends State<DicePage> {
  int rightDieNumber = generate();
  int leftDieNumber = generate();
  @override
  Widget build(BuildContext context) {
    //reloaded every time state changes
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left Die got pressed');
                changeDice();
              },
              child: Image.asset('images/dice$leftDieNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right Die got pressed');
                changeDice();
              },
              child: Image.asset('images/dice$rightDieNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeDice() {
    setState(() {
      leftDieNumber = generate();
      rightDieNumber = generate();
    });
  }
}
