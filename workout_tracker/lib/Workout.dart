import 'Exercice.dart';

class Workout{
  String nom;
  List<Exercice> entrainement;

  Workout(this.nom, this.entrainement);

  void ajouter_exercice(Exercice exercice){
    entrainement.add(exercice);
  }

  void enlever_exercice(Exercice exercice){
    entrainement.remove(exercice);
  }
}

