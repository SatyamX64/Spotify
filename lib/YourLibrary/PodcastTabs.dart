import 'package:flutter/material.dart';
import 'package:spotify/YourLibrary/YL_Constants.dart';

class PodcastTabs extends StatelessWidget {
  final String message;
  PodcastTabs(this.message);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(message, textAlign: TextAlign.center, style: kBigTextStyle),
          SizedBox(height: 30),
          FlatButton(
            color: Colors.white,
            onPressed: () {
              print('Button Pressed');
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'BROWSE PODCASTS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
