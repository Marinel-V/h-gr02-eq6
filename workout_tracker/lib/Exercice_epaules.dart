import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';

class Dos extends StatefulWidget {
  const Dos({Key? key}) : super(key: key);

  @override
  State<Dos> createState() => _DosState();
}

class _DosState extends State<Dos> {
  List<Exercice> exercices_dos = [
    Exercice(nom: 'Arnold Dumbbell Press'),
    Exercice(nom: 'Cable Face Pull'),
    Exercice(nom: 'Front Dumbbell Raise'),
    Exercice(nom: 'Lateral Dumbbell Raise',),
    Exercice(nom: 'Lateral Machine Raise'),
    Exercice(nom: 'Log Press'),
    Exercice(nom: 'Overhead Press'),
    Exercice(nom: 'Rear Delt Dumbell Raise'),
    Exercice(nom: 'Seated Dumbbell Lateral Raise'),
    Exercice(nom: 'Seated Dumbbell Press'),
    Exercice(nom: 'Smith Machine Overhead Press'),
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