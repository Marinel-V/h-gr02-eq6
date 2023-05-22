import 'package:flutter/material.dart';
import 'package:workout_tracker/Exercice_epaules.dart';
import 'package:workout_tracker/Exercice_jambes.dart';
import 'package:workout_tracker/Exercice_poitrine.dart';
import 'package:workout_tracker/Exercice_tricep.dart';
import 'Home.dart';
import 'Exercice_dos.dart';
import 'Exercice_Bicep.dart';

void main() {runApp(MaterialApp(
  initialRoute:'/home' ,
  routes: {
  //'/':(context) => Loading(),
  '/home': (context) => Home(),
  '/exercice_dos':(context) => Dos(),
  '/exercice_bicep': (context)=> Bicep(),
  '/exercice_epaules': (context)=> Epaules(),
  '/exercice_jambes': (context)=> Jambes(),
  '/exercice_poitrine': (context)=> Poitrine(),
  '/exercice_tricep': (context)=> Tricep(),
  },
));}


