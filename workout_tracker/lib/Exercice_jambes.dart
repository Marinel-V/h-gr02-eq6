import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';

class Jambes extends StatefulWidget {
  const Jambes({Key? key}) : super(key: key);

  @override
  State<Jambes> createState() => _JambesState();
}

class _JambesState extends State<Jambes> {
  List<Exercice> exercices_dos = [
    Exercice(nom: 'Barbell Calf Raise'),
    Exercice(nom: 'Barbell Front Squat'),
    Exercice(nom: 'Barbell Squat'),
    Exercice(nom: 'Glute-Ham Raise',),
    Exercice(nom: 'Leg Extension Machine'),
    Exercice(nom: 'Leg Press'),
    Exercice(nom: 'Lunges'),
    Exercice(nom: 'Lying Leg Curl Machine'),
    Exercice(nom: 'Seated Calf Raise Machine'),
    Exercice(nom: 'Stiff-Legged Deadlift'),
    Exercice(nom: 'Sumo Deadlift'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Exercice Pour Le Dos'),
          backgroundColor: Colors.indigo[900],
        ),
        body: ListView(
          children: exercices_dos.map((exercice) =>Exercice_selection_card(exercice: exercice,
            update: (){
              setState(() {
              });
            },
          )).toList(),
        )

    );
  }
}