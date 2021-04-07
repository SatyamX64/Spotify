import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Premium/PremiumCard.dart';
import 'package:spotify/Premium/SlidingCard.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF1DB954),
          Colors.black,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.7],
      )),
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Text(
              'Try Premium free for 1 Month',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SlidingCard(
                    titleA: freeTitles[index],
                    titleB: premiumTitle[index],
                  );
                }),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Text(
                'GET PREMIUM',
                style: TextStyle(
                    letterSpacing: 4,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Only \$19.00/month after offer period.Cancel anytime.Terms and Conditon Apply.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Spotify Free',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                Text(
                  'CURRENT PLAN',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white70,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          PremiumCard(
            color: Colors.purple,
            category: 'Family',
            title:
                'Up to 6 Premium accounts.Family Mix: shared playlist. Block explicit music. Ad-free music.Download to listen offline.Unlimited skips. On-demand playback. Cancel anytime',
            subtitle:
                'Only \$18.00/month after.For up to 6 family members living at the same address.Terms and condition apply.',
          ),
          PremiumCard(
            color: Colors.blue,
            category: 'prepaid',
            title:
                'Choose a day,week or month of Premium. Pay with PayTM or UPI. Top up when you want',
            subtitle:
                'Prices vary according to duration of plan. Terms and condition apply.',
          ),
          PremiumCard(
            color: Colors.green,
            category: 'Individual',
            title:
                'Ad-free music. Download to listen offline. Unlimited skips. On-demand playback. Cancel anytime',
            subtitle:
                'Only \$21.00/month after offer period. Cancel anytime.Terms and Conditions apply.',
          ),
          PremiumCard(
            color: Colors.amber,
            category: 'Student',
            title:
                'Ad-free music. Download to listen offline. Unlimited skips. On-demand playback. Cancel anytime',
            subtitle:
                'Only \$59.00/month after offer period. Cancel anytime. Terms and Conditions apply.',
          ),
        ],
      ),
    );
  }
}

List freeTitles = [
  'Ad-breaks in music',
  'Play in shuffle',
  '6 skips per hour',
  'Streaming Only',
  'Basic audio quality'
];
List premiumTitle = [
  'Ad-free music',
  'Play any song',
  'Unlimted skips',
  'Offline listening',
  'Extreme audio quality'
];
