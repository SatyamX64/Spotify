import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  AlbumCard({this.image, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/${image.toLowerCase()}.jpeg',
            height: 160,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
