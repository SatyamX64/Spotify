import 'dart:math';

import 'package:flutter/material.dart';

import 'package:spotify/YourLibrary/YL_Constants.dart';

class Artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF121212),
      child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return ListPile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/${images[index]}.jpeg'),
                radius: 33,
              ),
              title: titles[index],
              subtitle: '${Random().nextInt(400000)} Followers',
            );
          }),
    );
  }
}

List titles = [
  'Arijit Singh',
  'Kailasa',
  'Eminem',
  'KK',
  'John Lennon',
  'Lata Mangeshkar',
  'Ed Sheeran',
  'Camilo Cabella',
  'Shakira',
  'Dhinchak '
];
List images = [
  'arijit',
  'kher',
  'eminem',
  'kk',
  'lennon',
  'lata',
  'sheeran',
  'camila',
  'shakira',
  'pooja',
];
