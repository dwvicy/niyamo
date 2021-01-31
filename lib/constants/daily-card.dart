import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:niyamo/constants/AppTheme.dart';

class DailyCard extends StatefulWidget {
  const DailyCard({
    Key key,
  }) : super(key: key);

  @override
  _DailyCardState createState() => _DailyCardState();
}

class _DailyCardState extends State<DailyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan[400], borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                LineIcons.leaf,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
          ),
          contentPadding: EdgeInsets.all(2),
          title: Text(
            'Plant a tree',
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'A tree a day keeps climate change awayat bay',
            style: TextStyle(color: Colors.black54),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
