import 'package:flutter/material.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/constants/wheel.dart';

class MyRoutine extends StatefulWidget {
  @override
  _MyRoutineState createState() => _MyRoutineState();
}

class _MyRoutineState extends State<MyRoutine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.offWhite,
        body: SpinningWheel(Image.asset('assets/photos/5 2'),
            width: 100, height: 100));
  }
}
