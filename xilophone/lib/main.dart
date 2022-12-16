import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? couleur, required int soundNumber}) {
    return Expanded(
      child: TextButton(

        onPressed: () {
          playSound(soundNumber);
        }, child:  Container(
        color: couleur,
      )
      ,
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
              buildKey(couleur: Colors.red, soundNumber: 1),
              buildKey(couleur: Colors.orange, soundNumber: 2),
              buildKey(couleur: Colors.yellow, soundNumber: 3),
              buildKey(couleur: Colors.green, soundNumber: 4),
              buildKey(couleur: Colors.teal, soundNumber: 5),
              buildKey(couleur: Colors.blue, soundNumber: 6),
              buildKey(couleur: Colors.purple, soundNumber: 7),
              //buildKey(couleur: Colors.red, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}