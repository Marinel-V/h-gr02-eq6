class Exercice {

  String nom;
  int repetition =0;
  int poids =0;

  Exercice({required this.nom});

  void remove_repetition(){
    if(repetition > 0){
      this.repetition = repetition-1;
    }
  }
  void add_repetition(){
    this.repetition = repetition+1;
  }

  void add_poids(int poids){
    if(this.poids+poids < 999){
      this.poids += poids;
    }
  }

  void enlever_poids(int poids){

    if(this.poids > poids){
      this.poids -= poids;
    }
    else {
      this.poids = 0;
    }

  }
}