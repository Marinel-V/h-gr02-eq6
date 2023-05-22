import 'Exercice.dart';

class Workout{
  String nom;
  DateTime creationDate= DateTime.now();
  List<Exercice> entrainement = [];

  Workout(this.nom);

  void ajouter_exercice(Exercice exercice){
    entrainement.add(exercice);
  }

  void enlever_exercice(Exercice exercice){
    entrainement.remove(exercice);
  }
}

