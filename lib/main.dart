import 'package:flutter/material.dart';
import 'package:spotify/Premium/Premium.dart';
import 'YourLibrary/YourLibrary.dart';
import 'Search/SearchPage.dart';
import 'HomePage/Home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageController();
  }
}

class PageController extends StatefulWidget {
  @override
  _PageControllerState createState() => _PageControllerState();
}

class _PageControllerState extends State<PageController> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
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
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFF222326),
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
              label: 'Search'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: 'Your Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.spotify),
                label: 'Premium',
              ),
            ],
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
