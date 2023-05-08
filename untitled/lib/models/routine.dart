import 'dart:convert';

import 'package:untitled/models/exercise.dart';

class Routine {
  String id;
  String name;
  List<Exercise> exercises;

  Routine({required this.id, required this.name, required this.exercises});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'exercises': exercises.map((exercise) => exercise.toMap()).toList(),
    };
  }
}
