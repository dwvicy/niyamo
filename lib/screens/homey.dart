import 'package:flutter/material.dart';
import 'package:niyamo/constants/carouselz.dart';

class Homey extends StatefulWidget {
  @override
  _HomeyState createState() => _HomeyState();
}

class _HomeyState extends State<Homey> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04,
                left: MediaQuery.of(context).size.width * 0.1),
            child: Text(
              'explore',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.overline),
            ),
          ),
          Caraou(),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.1),
            child: Text(
              'your routine',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.overline),
            ),
          ),
        ],
      ),
    );
  }
}
