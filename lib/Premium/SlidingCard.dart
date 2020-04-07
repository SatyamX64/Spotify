import 'package:flutter/material.dart';

class SlidingCard extends StatelessWidget {
  final String titleA;
  final String titleB;
  SlidingCard({this.titleB, this.titleA});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                colors: [Colors.black45, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.horizontal(left: Radius.circular(15)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    'FREE',
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w900),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    titleA,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(
                colors: [Colors.green, Colors.lightGreen],
              ),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(15)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    'PREMIUM',
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w900),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    titleB,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
