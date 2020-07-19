import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int id) {
    player.play('note$id.wav');
  }

  Widget buildKey({int soundId, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundId);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                soundId: 1,
                color: Colors.red,
              ),
              buildKey(soundId: 2, color: Colors.orange),
              buildKey(soundId: 3, color: Colors.yellow),
              buildKey(soundId: 4, color: Colors.green),
              buildKey(soundId: 5, color: Colors.teal),
              buildKey(soundId: 6, color: Colors.blue),
              buildKey(soundId: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
