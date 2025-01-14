import 'package:flutter/material.dart';
import 'Exercice.dart';

class Exercice_selection_card extends StatelessWidget {

  final Exercice exercice;
  final Function() update;
  final Function() ajouter;

  Exercice_selection_card({required this.exercice, required this.update, required this.ajouter});

  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child : Padding(
          padding: const EdgeInsets.all(5.0),
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
                  SizedBox(width: 157.0,),
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
                  SizedBox(width: 20,),
                  IconButton(onPressed:
                    enleverRepetition, icon: Icon(Icons.remove)),
                  Text(
                    '${exercice.repetition}'
                  ),
                  IconButton(onPressed:
                    ajouterRepetition, icon: Icon(Icons.add)),
                  SizedBox(width: 30,),

              ElevatedButton(
                onPressed: (){
                  //TO DO
                  // Ajouter la fonction add to selected workout;
                } ,
                child: Center(
                    child: Text("Add", style: TextStyle(fontSize: 18),)
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    primary: Colors.green[400],
                    onPrimary: Colors.black
                ),
              ) ,
                  SizedBox(width: 18,),

                  IconButton(onPressed:
                  enleverPoids, icon: Icon(Icons.remove)),
                  Text(
                      '${exercice.poids}'
                  ),
                  IconButton(onPressed:
                  ajouterPoids, icon: Icon(Icons.add)),


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

  