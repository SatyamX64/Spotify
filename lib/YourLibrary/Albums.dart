import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF121212),
      ),
      child: Text(
        'Your albums will appear here',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
