import 'package:flutter/material.dart';

InputDecoration kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  prefixIcon: Icon(
    Icons.search,
    color: Colors.black,
  ),
  hintText: 'Artists, songs, or podcasts',
  hintStyle: TextStyle(
      color: Colors.black, fontWeight: FontWeight.w900, fontFamily: 'Proxima'),
  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
  ),
);

List<String> titles = [
  //  For Genre Cards
  'Pop',
  'Reggae',
  'Classical',
  'Rock',
  'Jazz',
  'Retro',
  'Bollywood',
  'Romance',
  'Telugu',
];
List<Color> colors = [
  //  For Genre Cards
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
];
