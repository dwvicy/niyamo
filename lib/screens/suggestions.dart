import 'package:flutter/material.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/screens/grateful-list.dart';

class SuggestPage extends StatefulWidget {
  @override
  _SuggestPageState createState() => _SuggestPageState();
}

class _SuggestPageState extends State<SuggestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.offWhite,
      appBar: AppBar(
        backgroundColor: AppTheme.offWhite,
        elevation: 0,
        title: Text(
          'empower',
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
