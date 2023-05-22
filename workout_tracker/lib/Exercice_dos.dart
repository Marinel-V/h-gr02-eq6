import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';
import 'Workout.dart';

class Dos extends StatefulWidget {
  const Dos({Key? key}) : super(key: key);

  @override
  State<Dos> createState() => _DosState();
}

class _DosState extends State<Dos> {
  List<Exercice> exercices_dos = [
    Exercice(nom: 'Pull-Up'),
    Exercice(nom: 'Chin-Up'),
    Exercice(nom: 'Lat-Pulldown'),
    Exercice(nom: 'Barbell-Row',),
    Exercice(nom: 'T-Bar Row'),
    Exercice(nom: 'Seated Cable Row'),
    Exercice(nom: 'Deadlift'),
    Exercice(nom: 'Pull-Over'),
    Exercice(nom: 'Rack-Pull'),
    Exercice(nom: 'Dumbell-Shrug'),
    Exercice(nom: 'Barbell-Shrug'),
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
            }, ajouter: (){
              final currentWorkout = ModalRoute.of(context)!.settings.arguments as Workout;
              currentWorkout.ajouter_exercice(exercice);
            },
          )).toList(),
        )
    );
  }
}