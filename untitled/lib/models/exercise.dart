class Exercise {
  String name;

  Exercise({required this.name});

  factory Exercise.fromMap(Map<dynamic, dynamic> map) {
    return Exercise(name: map['name'].toString());
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}
