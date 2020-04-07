import 'package:flutter/material.dart';
import 'package:spotify/YourLibrary/PodcastTabs.dart';
import 'Albums.dart';
import 'Artists.dart';
import 'PlayLists.dart';

//Colors
Color kLightBlack = Color(0xFF121212);
Color kSpotifyGreen = Color(0xFF1DB954);
Color kSelectedColor = Colors.white;
Color kUnSelectedColor = Colors.white70;

//Colors
//TextStyle
TextStyle kBigTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
TextStyle kTabsTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w900,
);
TextStyle kSmallTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

//TextStyle

//List
List<Tab> musicTabs = [
  Tab(
    child: Text(
      'Playlists',
      style: kTabsTextStyle,
    ),
  ),
  Tab(
    child: Text(
      'Artists',
      style: kTabsTextStyle,
    ),
  ),
  Tab(
    child: Text(
      'Albums',
      style: kTabsTextStyle,
    ),
  ),
];
List<Widget> musicPages = [
  PlayLists(),
  Artists(),
  Albums(),
];

List<Tab> podcastsTabs = [
  Tab(
    child: Text(
      'Episodes',
      style: kTabsTextStyle,
    ),
  ),
  Tab(
    child: Text(
      'Download',
      style: kTabsTextStyle,
    ),
  ),
  Tab(
    child: Text(
      'Shows',
      style: kTabsTextStyle,
    ),
  ),
];
List<Widget> podcastsPages = [
  PodcastTabs('Looking for Something to listen to?'),
  PodcastTabs('No Downloads yet'),
  PodcastTabs('You haven\'t followed any podcasts yet'),
];

//List

class ListPile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  ListPile({this.title, this.leading, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          leading,
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
