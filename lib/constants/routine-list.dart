import 'package:flutter/material.dart';
import 'package:niyamo/constants/routine-card.dart';

class RoutineList extends StatefulWidget {
  @override
  _RoutineListState createState() => _RoutineListState();
}

List<String> names = [
  '5 mins of mindfulness meditation',
  '30 mins of running',
  '10 Suryanamaskars',
  '8 glasses of water intake daily',
  'No phone usage for 1 hour before sleeping'
];

class _RoutineListState extends State<RoutineList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return RoutineCard(
                title: names[index],
              );
            }));
  }
}
