import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:untitled/models/routine.dart';
import 'package:untitled/models/exercise.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddRoutineScreen extends StatefulWidget {
  @override
  _AddRoutineScreenState createState() => _AddRoutineScreenState();
}

class _AddRoutineScreenState extends State<AddRoutineScreen> {
  final _formKey = GlobalKey<FormState>();
  final _routineNameController = TextEditingController();
  List<Exercise> _exercises = [];
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _routineNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Routine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _routineNameController,
                decoration: InputDecoration(labelText: 'Routine Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a routine name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Text('Exercises'),
              SizedBox(height: 8.0),
              Expanded(
                child: ListView.builder(
                  itemCount: _exercises.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_exercises[index].name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            _exercises.removeAt(index);
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final routineName = _routineNameController.text;
                      final DatabaseReference routineRef = FirebaseDatabase
                          .instance
                          .ref()
                          .child('users/${_auth.currentUser?.uid}/routines')
                          .push();
                      final routine =
                      Routine(name: routineName, exercises: _exercises, id: '${routineRef.key}');
                      await routineRef.set(routine.toMap());
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Save'),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _showAddExerciseDialog();
                  },
                  child: Text('Add Exercise'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddExerciseDialog() {
    Exercise exercise = Exercise(name: '');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Exercise'),
          content: TextFormField(
            decoration: InputDecoration(labelText: 'Exercise Name'),
            onChanged: (value) {
              exercise.name = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _exercises.add(exercise);
                });
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
