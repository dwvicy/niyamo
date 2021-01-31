import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:niyamo/constants/daily-card.dart';

List<String> titles = [
  '5 mins of mindfulness meditation',
  '10 Suryanamaskars',
  'No phone usage for 1 hour before sleeping'
];
List<String> subtitles = [
  'This kind of meditation requires you to be self-aware',
  'A crucial part of yoga',
  'This will help you relax and go into deep sleep'
];
List<IconData> icons = [
  LineIcons.heart,
  LineIcons.star,
  LineIcons.leaf,
];

class DailyFeed extends StatefulWidget {
  @override
  _DailyFeedState createState() => _DailyFeedState();
}

class _DailyFeedState extends State<DailyFeed> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return DailyCard(
          title: titles[index],
          subtitle: subtitles[index],
        );
      },
    );
  }
}
