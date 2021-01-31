import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:niyamo/constants/daily-card.dart';

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
        return DailyCard();
      },
    );
  }
}
