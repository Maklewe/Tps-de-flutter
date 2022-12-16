import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp  extends StatefulWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFF4ca2f5),
        appBar: AppBar(
          backgroundColor: Color(0XFF3158ab),
          title: const Text('Magic ball', style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 20.0,
          ),
          ),
        ),
       body: Center(
         child: Container(
           child: TextButton(
             onPressed: (){
               setState(() {
                 num=Random().nextInt(5)+1;
                 print('Image');
               });
             },
             child: Image(
               image:AssetImage(
                   'images/ball$num.png'
               ) ,
             ),
           ),
         ),
       ),
    ),
    );
  }
}
