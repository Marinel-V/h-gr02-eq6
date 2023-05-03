import 'package:flutter/material.dart';
import 'Home.dart';
import 'Exercice_dos.dart';
import 'Exercice_Bicep.dart';

void main() {runApp(MaterialApp(
  initialRoute:'/home' ,
  routes: {
  //'/':(context) => Loading(),
  '/home': (context) => Home(),
  '/exercice_dos':(context) => Dos(),
    '/exercice_bicep': (context)=> Bicep()
  },
));}


