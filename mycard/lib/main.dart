import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/kinkong.jpg'),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'de SOUZA Maklewè Ana',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),

            const Text(
              "Full Stack Developper",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontFamily: 'Ana',
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Card(
                margin:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),

                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.phone, color: Colors.teal,size: 40,),
                    Text('+228 91989754',
                        style:
                        TextStyle(fontSize: 20,color: Colors.teal, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Card(
                margin:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),

                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.mail, color: Colors.teal,size: 40,),
                    Text('ana@gmail.com',
                        style:
                        TextStyle(fontSize: 20,color: Colors.teal, fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}