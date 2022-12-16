import 'package:flutter/material.dart';
import 'dart:math';

import 'package:game/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int de_degauche=1;
  int de_dedroite=1;
  void reload(){
    setState((){
      de_dedroite=Random().nextInt(6)+1;
      de_degauche=Random().nextInt(6)+1;
    });
  }

  Expanded mafonction(int numero){
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: (){
          reload();
          print(de_degauche);
          print(de_dedroite);

        },
        child: Image(
          image: AssetImage(
              'images/dice$numero.png'
          ),
        ),
      ),
    );
  }

  Text montexte(int text){
    return Text(
      text.toString()
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kScaffoldColor,
        appBar: AppBar(
          backgroundColor: Color(0XFF3bd5f7),
          title: Text('Jeu de dé IPNET',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [

            mafonction(de_dedroite),
            mafonction(de_degauche),
          ],
        ),
        ),
      ),
    );
  }
}
