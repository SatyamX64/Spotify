import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify/Search/Constants.dart';
import 'Genre.dart';
import 'dart:math';

class SliverCustomHeader extends SliverPersistentHeaderDelegate {
  SliverCustomHeader({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(SliverCustomHeader oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool searchVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.0],
        ),
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverCustomHeader(
              minHeight: 120,
              maxHeight: 300,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink,Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.9],
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Visibility(
                        visible: searchVisibility,
                        child: Text(
                          'Search',
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: 'Promxima',
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: TextField(
                            decoration: kTextFieldDecoration,
                          )),
                    ],
                  ),
                ),
              ),
            ), //  bottom: TextField(decoration: kTextFieldDecoration,),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.7,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Genre(
                  color: colors[Random().nextInt(colors.length)],
                  title: titles[Random().nextInt(titles.length)],
                );
              },
              childCount: 27,
            ),
          )
        ],
      ),
    );
  }
}
