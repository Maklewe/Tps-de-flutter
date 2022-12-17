import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String mon_bmi;
  final String mon_resultat;
  final String interpretation;

  const ResultPage({super.key, required this.mon_bmi, required this.mon_resultat, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          ReusableCard(
            largeur: double.infinity,
            couleur: Colors.teal,
            containerChild:
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mon_bmi,
                          style: const TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          ReusableCard(
            largeur: double.infinity,
            couleur: Colors.teal,
            containerChild:
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mon_resultat,
                          style: const TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ReusableCard(
            largeur: double.infinity,
            couleur: Colors.teal,
            containerChild:
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                        interpretation,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            height: 80.0,
            width: double.infinity,
            color: const Color(0xFFEB1555),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Center(
                child: Text(
                  'RE-CALCULER',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}