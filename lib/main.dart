import 'package:flutter/material.dart';
import 'package:spotify/Premium/Premium.dart';
import 'constants.dart';
import 'YourLibrary/YourLibrary.dart';
import 'Search/SearchPage.dart';
import 'HomePage/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage();
  }
}

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 0;
  final List<Widget> page = [
    Home(),
    SearchPage(),
    YourLibrary(),
    Premium(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify",
      theme: ThemeData(fontFamily: 'Proxima'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: page[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: kBottomBarColor,
            currentIndex: currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(
                  'Search',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                title: Text(
                  'Your Library',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.spotify),
                title: Text(
                  'Premium',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
