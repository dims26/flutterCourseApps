import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: new BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[800],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

int generate() => Random().nextInt(5) + 1;

class _BallState extends State<Ball> {
  int ballNumber = generate();
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Center(
          child: FlatButton(
            onPressed: () {
              print('I got clicked!');
              changeBall();
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    ]);
  }

  changeBall() {
    setState(() {
      ballNumber = generate();
    });
  }
}
