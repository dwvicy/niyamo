import 'package:flutter/material.dart';
import 'package:niyamo/constants/AppTheme.dart';

class BragSheet extends StatefulWidget {
  @override
  _BragSheetState createState() => _BragSheetState();
}

class _BragSheetState extends State<BragSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.offWhite,
      appBar: AppBar(
        backgroundColor: AppTheme.offWhite,
        elevation: 0,
        title: Text(
          'braggart',
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
    );
  }
}
