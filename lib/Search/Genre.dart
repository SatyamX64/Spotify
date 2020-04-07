import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/Search/GenreResult.dart';

class Genre extends StatelessWidget {
  final Color color;
  final String title;

  Genre({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(7),
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      )),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [color, Colors.greenAccent],
                    ),
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                left: constraints.maxWidth - 50,
                height: 60,
                child: Transform.rotate(
                  angle: pi / 8,
                  child: Image.asset(
                    'images/${title.toLowerCase()}.jpeg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GenreResult(
            color: color,
            title: title,
          );
        }));
      },
    );
  }
}
