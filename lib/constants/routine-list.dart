import 'package:flutter/material.dart';
import 'package:niyamo/constants/routine-card.dart';

class RoutineList extends StatefulWidget {
  @override
  _RoutineListState createState() => _RoutineListState();
}

class _RoutineListState extends State<RoutineList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return RoutineCard();
            }));
  }
}
