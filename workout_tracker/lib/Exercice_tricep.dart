import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';
import 'Workout.dart';

class Tricep extends StatefulWidget {
  const Tricep({Key? key}) : super(key: key);

  @override
  State<Tricep> createState() => _TricepState();
}

class _TricepState extends State<Tricep> {
  List<Exercice> exercices_dos = [
    Exercice(nom: 'Cable Overhead Tricep Extension'),
    Exercice(nom: 'Close Grip Barbell Bench Press'),
    Exercice(nom: 'Dumbbell Overhead Tricep Extension'),
    Exercice(nom: 'Ez-Bar Skullcrusher',),
    Exercice(nom: 'Lying Triceps Extension'),
    Exercice(nom: 'Parallel Bar Triceps Dip'),
    Exercice(nom: 'Ring Dip'),
    Exercice(nom: 'Rope Push Down'),
    Exercice(nom: 'V-Bar Push Down'),
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
            ajouter: (){
              final currentWorkout = ModalRoute.of(context)!.settings.arguments as Workout;
              currentWorkout.ajouter_exercice(exercice);
            },
          )).toList(),
        )

    );
  }
}