import 'package:flutter/material.dart';
import 'YL_Constants.dart';

class YourLibrary extends StatefulWidget {
  @override
  _YourLibraryState createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  var tabs;
  var pages;
  Color musicColor;
  Color podcastsColor;
  @override
  void initState() {
    super.initState();
    tabs = musicTabs;
    pages = musicPages;
    musicColor = kSelectedColor;
    podcastsColor = kUnSelectedColor;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kLightBlack,
          bottom: TabBar(
            indicatorColor: kSpotifyGreen,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs,
          ),
          title: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      tabs = musicTabs;
                      pages = musicPages;
                      musicColor = kSelectedColor;
                      podcastsColor = kUnSelectedColor;
                    });
                  },
                  child: Text(
                    'Music',
                    style: TextStyle(
                      color: musicColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      tabs = podcastsTabs;
                      pages = podcastsPages;
                      musicColor = kUnSelectedColor;
                      podcastsColor = kSelectedColor;
                    });
                  },
                  child: Text(
                    'Podcasts',
                    style: TextStyle(
                      color: podcastsColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
