import 'package:flutter/material.dart';
import 'Exercice.dart';

class Exercice_selection_card extends StatelessWidget {

  final Exercice exercice;
  final Function() update;
  Exercice_selection_card({required this.exercice, required this.update});


  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child : Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Text(
            exercice.nom,
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[900]
            ),
          ),
              SizedBox(height: 16.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 30,),
                  Text(
                      'Répétitions',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w500
                      )
                  ),
                  SizedBox(width: 141.0,),
                  Text(
                    'Poids',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w500
                      )
                  )
                ]
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 21,),
                  IconButton(onPressed:
                    enleverRepetition, icon: Icon(Icons.remove)),
                  Text(
                    '${exercice.repetition}'
                  ),
                  IconButton(onPressed:
                    ajouterRepetition, icon: Icon(Icons.add)),

                  SizedBox(width: 91,),

                  IconButton(onPressed:
                    enleverPoids, icon: Icon(Icons.remove)),
                  Text(
                      '${exercice.poids}'
                  ),
                  IconButton(onPressed: ajouterPoids, icon: Icon(Icons.add)),

                ],
              )

            ],
          ),
        )
    );
  }

  void enleverRepetition(){
    exercice.remove_repetition();
    update();
  }
  void ajouterRepetition(){
    exercice.add_repetition();
    update();
  }
  void ajouterPoids(){
    exercice.add_poids(5);
    update();
  }
  void enleverPoids(){
    exercice.enlever_poids(5);
    update();
  }

}

  