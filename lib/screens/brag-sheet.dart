import 'package:flutter/material.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/screens/placeholder.dart';
import 'package:sentiment_dart/sentiment_dart.dart';

class BragSheet extends StatefulWidget {
  @override
  _BragSheetState createState() => _BragSheetState();
}

class _BragSheetState extends State<BragSheet> {
  final TextEditingController _controller = TextEditingController();

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
        body: Column(
          children: [
            Image.asset('assets/photos/5 2.png'),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: AppTheme.pinky, style: BorderStyle.solid)),
                  ),
                  controller: _controller,
                  onChanged: (value) {
                    value = _controller.toString();
                  },
                )),
          ],
        ));
  }
}
