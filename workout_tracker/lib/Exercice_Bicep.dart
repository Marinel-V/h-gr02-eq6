import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';

class Bicep extends StatefulWidget {
  const Bicep({Key? key}) : super(key: key);

  @override
  State<Bicep> createState() => _BicepState();
}

class _BicepState extends State<Bicep> {
  List<Exercice> exercices_bicep = [
    Exercice(nom: 'Barbell Curl'),
    Exercice(nom: 'Cable Curl'),
    Exercice(nom: 'Dumbell Concentration Curl'),
    Exercice(nom: 'Dumbell Curl',),
    Exercice(nom: 'Dumbell Hammer Curl'),
    Exercice(nom: 'Dumbell Preacher Curl'),
    Exercice(nom: 'Ez-Bar Curl'),
    Exercice(nom: 'Ez-Bar Preacher Curl'),
    Exercice(nom: 'Seated Incline Dumbbel Curl'),
    Exercice(nom: 'Seated Machine Curl'),
    Exercice(nom: 'Gymnast Pull'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Exercice Pour Les Biceps'),
          backgroundColor: Colors.indigo[900],
        ),
        body: ListView(
          children: exercices_bicep.map((exercice) =>Exercice_selection_card(exercice: exercice,
            update: (){
              setState(() {
              });
            },
          )).toList(),
        )

    );
  }
}