import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/screens/homey.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.offWhite,
      appBar: AppBar(
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'niyamo',
              style: TextStyle(
                  color: AppTheme.pinky,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            )),
        backgroundColor: AppTheme.offWhite,
        elevation: 0,
      ),
      body: Homey(),
    );
  }
}
