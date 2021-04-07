import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Widgets/AlbumCard.dart';

class GenreResult extends StatelessWidget {
  final String title;
  final Color color;
  GenreResult({this.title, this.color});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color,
                Color(0xFF121212),
              ],
              stops: [0.0, 0.3],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Popular Playlists',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.84,
                  )),
                  itemBuilder: (BuildContext context, int index) {
                    return AlbumCard(
                      image: titles[index],
                      title: titles[index],
                      subtitle: '${Random().nextInt(90000)} Followers',
                    );
                  },
                  itemCount: titles.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> titles = [
  'Pop',
  'Reggae',
  'Classical',
  'Rock',
  'Jazz',
  'Retro',
  'Bollywood',
  'Eminem',
  'Arijit',
  'Sheeran',
  'Shakira',
  'Romance',
  'Telugu',
  'HipHop',
  'Lennon',
];
