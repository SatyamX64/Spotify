import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//BottomNavigationBar
IconThemeData kSelectedIconData = IconThemeData(
  size: 25,
);
IconThemeData kUnSelectedIconData = IconThemeData(
  size: 25,
);
Color kBottomBarColor = Color(0xFF222326);

//BottomNavigationBar

//Home Page
LinearGradient kGradientColor = LinearGradient(
  colors: [
    Color(0xFF322E48),
    Color(0xFF121212),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
//Home Page

//Search Page

//Search Page
// YourLibrary
TextStyle kMediumTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 19,
  fontWeight: FontWeight.w600,
);
TextStyle kBigTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);
// PlayList
TextStyle kTitleTextStyleYL = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
TextStyle kSubTitleTextStyleYL = TextStyle(
  color: Colors.white70,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

Color spotifyGreen = Color(0xFF1DB954);
