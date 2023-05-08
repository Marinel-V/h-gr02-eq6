import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:untitled/models/exercise.dart';
import 'package:untitled/models/routine.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RoutinesListWidget extends StatefulWidget {
  @override
  _RoutinesListWidgetState createState() => _RoutinesListWidgetState();
}

class _RoutinesListWidgetState extends State<RoutinesListWidget> {
  late List<Routine> routines = [];
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _fetchRoutines();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _fetchRoutines() async {
    DatabaseReference routinesRef = FirebaseDatabase.instance
        .ref()
        .child('users/${_auth.currentUser?.uid}/routines');

    routinesRef.onValue.listen((event) {
      Map<dynamic, dynamic>? routinesMap =
          event.snapshot.value as Map<dynamic, dynamic>?;

      List<Routine> routines = [];

      if (routinesMap != null) {
        routinesMap.forEach((key, value) {
          List<dynamic> exercises = value['exercises'] ?? [];
          List<Exercise> exerciseList =
              exercises.map((exercise) => Exercise.fromMap(exercise)).toList();

          Routine routine = Routine(
            id: key,
            name: value['name'],
            exercises: exerciseList,
          );

          routines.add(routine);
        });
      }

      if (mounted) {
        setState(() {
          this.routines = routines;
        });
      }
    });
  }

  void _navigateToRoutineDetailScreen(BuildContext context, Routine routine) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => RoutineDetailScreen(routine: routine)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: routines.length,
      itemBuilder: (BuildContext context, int index) {
        Routine routine = routines[index];
        return ListTile(
          title: Text(routine.name),
          onTap: () => _navigateToRoutineDetailScreen(context, routine),
        );
      },
    );
  }
}

class RoutineDetailScreen extends StatefulWidget {
  final Routine routine;

  const RoutineDetailScreen({Key? key, required this.routine})
      : super(key: key);

  @override
  _RoutineDetailScreenState createState() => _RoutineDetailScreenState();
}

class _RoutineDetailScreenState extends State<RoutineDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.routine.name),
      ),
      body: ListView.builder(
        itemCount: widget.routine.exercises.length,
        itemBuilder: (BuildContext context, int index) {
          Exercise exercise = widget.routine.exercises[index];
          return ListTile(
            title: Text(exercise.name),
          );
        },
      ),
    );
  }
}
