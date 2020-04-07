import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremiumCard extends StatelessWidget {
  final String category;
  final String title;
  final String subtitle;
  final Color color;
  PremiumCard({this.color, this.title, this.subtitle, this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Premium $category',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Free',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'FOR 1 MONTH',
                      style: TextStyle(fontSize: 10, color: Colors.white70),
                    ),
                  ],
                ),
              ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'TRY 1 MONTH FREE',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w900),
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ]),
    );
  }
}
