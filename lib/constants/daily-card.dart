import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DailyCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const DailyCard({Key key, this.title, this.subtitle}) : super(key: key);

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
          leading: IconButton(
            icon: Icon(
              LineIcons.star,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              widget.title,
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              widget.subtitle,
              style: TextStyle(color: Colors.black54),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
