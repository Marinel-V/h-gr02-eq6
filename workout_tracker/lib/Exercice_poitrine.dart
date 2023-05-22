import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';

class Poitrine extends StatefulWidget {
  const Poitrine({Key? key}) : super(key: key);

  @override
  State<Poitrine> createState() => _PoitrineState();
}

class _PoitrineState extends State<Poitrine> {
  List<Exercice> exercices_dos = [
    Exercice(nom: 'Cable Crossover'),
    Exercice(nom: 'Decline Barbell Bench Press'),
    Exercice(nom: 'Flat Barbell Bench Press'),
    Exercice(nom: 'Flat Dumbbell Bench Press',),
    Exercice(nom: 'Incline Barbell Bench Press'),
    Exercice(nom: 'Incline Dumbbell Bench Press'),
    Exercice(nom: 'One Arm Cable Cross Over'),
    Exercice(nom: 'Seated Machine Fly'),
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