import 'package:flutter/material.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/constants/routine-list.dart';

class Hacks extends StatefulWidget {
  @override
  _HacksState createState() => _HacksState();
}

class _HacksState extends State<Hacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.offWhite,
      body: SingleChildScrollView(
        child: Stack(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  'mental health',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.015,
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  'see more>',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: RoutineList()),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.31,
                  left: MediaQuery.of(context).size.width * 0.02),
              child: Text(
                'assertiveness',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.31,
                  left: MediaQuery.of(context).size.width * 0.02),
              child: Text(
                'see more>',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.35,
            ),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: RoutineList()),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: RoutineList()),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.61,
                  left: MediaQuery.of(context).size.width * 0.02),
              child: Text(
                'postivitity',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.61,
                  left: MediaQuery.of(context).size.width * 0.02),
              child: Text(
                'see more>',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.65,
            ),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: RoutineList()),
          ),
        ]),
      ),
    );
  }
}
