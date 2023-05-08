// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
//
// class DatabaseManager {
//   final _database = FirebaseDatabase.instance.ref();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   Future<void> addRoutine(String name, List<Map<String, dynamic>> exercises) async {
//     final currentUser = _auth.currentUser;
//     if (currentUser == null) {
//       throw Exception("User not authenticated");
//     }
//
//     final routineRef = _database.child('users/${currentUser.uid}/routines').push();
//
//     await routineRef.set({
//       'name': name,
//       'exercises': exercises.map((exercise) => {
//         'name': exercise['name'],
//         'sets': exercise['sets'].map((set) => {
//           'weight': set['weight'] ?? 0,
//           'reps': set['reps'] ?? 0,
//           'note': set['note'] ?? ''
//         }).toList()
//       }).toList()
//     });
//
//   }
//
//   Future<List<Map<String, dynamic>>> getRoutines() async {
//     final currentUser = _auth.currentUser;
//     if (currentUser == null) {
//       throw Exception("User not authenticated");
//     }
//
//     final routinesRef = _database.child('users/${currentUser.uid}/routines');
//
//     final DataSnapshot snapshot = await routinesRef.get();
//     final routines = <Map<String, dynamic>>[];
//     final data = Map<dynamic, dynamic>.from(snapshot.value);
//     data.forEach((key, value) {
//       routines.add({
//         'id': key,
//         'name': value['name'],
//         'exercises': (value['exercises'] as List).map((exercise) => {
//           'name': exercise['name'],
//           'sets': (exercise['sets'] as List).map((set) => {
//             'weight': set['weight'] ?? 0,
//             'reps': set['reps'] ?? 0,
//             'note': set['note'] ?? ''
//           }).toList()
//         }).toList()
//       });
//     });
//     print(routines);
//     return routines;
//   }
//
//   Future<void> deleteRoutine(String id) async {
//     final currentUser = _auth.currentUser;
//     if (currentUser == null) {
//       throw Exception("User not authenticated");
//     }
//
//     final routineRef = _database.child('users/${currentUser.uid}/routines/$id');
//
//     await routineRef.remove();
//   }
// }
