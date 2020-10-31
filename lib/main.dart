import 'package:flutter/material.dart';
import 'package:marca_tento/views/names_players.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Marcador de Truco',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Color(0xFF304ffe)
    ),
    home: NamesPlayersApp(),
    ));
}

