import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/HomePage/AlbumTile.dart';
import '../Widgets/AlbumCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF322E48),
            Color(0xFF121212),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'Good Evening',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: AlbumTile(
                              image: 'liked',
                              title: 'Liked Songs',
                            ),
                          ),
                          Expanded(
                            child: AlbumTile(
                              image: 'rock',
                              title: 'Rock On !!',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: AlbumTile(
                              image: 'classical',
                              title: 'Cult Classics',
                            ),
                          ),
                          Expanded(
                            child: AlbumTile(
                              image: 'pooja',
                              title: 'Cancer',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: AlbumTile(
                              image: 'telugu',
                              title: 'Pyscho',
                            ),
                          ),
                          Expanded(
                            child: AlbumTile(
                              image: 'sheeran',
                              title: 'Perfect',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child : SizedBox(height: 14,),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      category[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    horizontalList(),
                  ],
                );
                },
              childCount: titles.length,
            ),
          )
        ],
      ),
    );
  }
}
Widget horizontalList() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      itemCount: 13,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        int randomNumber;
        randomNumber = Random().nextInt(titles.length);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: AlbumCard(
            title: titles[randomNumber],
            subtitle: '${Random().nextInt(30000)} Songs',
            image: images[randomNumber],
          ),
        );
      },
    ),
  );
}

List<String> category = [
  'Recently Played',
  'New Podcasts Episodes',
  'Popular and Trending',
  'Charts',
  'Made for You',
  'Podcasts you might like',
  'New Music Friday',
  'Your Top Podcasts',
  'Uniquely Yours',
  'Popular Playlists',
  'Recommended Radio',
  'Best of Artists',
  'Recommended for Today',
  'Workout',
  'Mood',
  'Popular Albuums',
  'Throwback',
];
List titles = [
  'Liked Songs',
  'Reggae Rumba',
  'Bollywood Masala',
  'Rock it Baby',
  'Lo-fi Beats',
  'Classical',
  'Telugu Tadka',
  'Rustic Retro',
  'Pop Punch',
  'Havana Hits',
  'Rap God',
  'Imagine',
  'Wakka Wakka ',
  'The Nightingale',
];
List images = [
  'liked',
  'reggae',
  'bollywood',
  'rock',
  'lofi',
  'classical',
  'telugu',
  'retro',
  'pop',
  'camila',
  'eminem',
  'lennon',
  'shakira',
  'lata',
];
