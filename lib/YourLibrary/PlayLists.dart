import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify/YourLibrary/YL_Constants.dart';

class PlayLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      color: Color(0xFF121212),
      child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            String subtitle;
            if (index == 0)
              subtitle = ' ';
            else
              subtitle = '${Random().nextInt(3000)} Songs';
            return ListPile(
              title: titles[index],
              subtitle: subtitle,
              leading: Image.asset(
                'images/${images[index]}.jpeg',
                height: 60,
              ),
            );
          }),
    );
  }
}

List titles = [
  'Create playlist',
  'Liked Songs',
  'Reggae Rumba',
  'Bollywood Masala',
  'Rock it Baby',
  'Lo-fi Beats',
  'Classical',
  'Telugu Tadka',
  'Rustic Retro',
  'Pop Punch',
];
List images = [
  'add',
  'liked',
  'reggae',
  'bollywood',
  'rock',
  'lofi',
  'classical',
  'telugu',
  'retro',
  'pop',
];
