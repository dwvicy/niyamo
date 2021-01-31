import 'package:flutter/material.dart';
import 'package:niyamo/constants/routine-card.dart';

class AssertList extends StatefulWidget {
  @override
  _AssertListState createState() => _AssertListState();
}

List<String> names = [
  'Eradicate your nervousness with physical activity',
  'Try to rephrase negative sentences',
  'Life is 10% events and 90% our reactions towards those events',
  'Don\'t be passive aggressive, be assertive',
  'If you can\'t be assertive, make sure you value your time'
];

class _AssertListState extends State<AssertList> {
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
