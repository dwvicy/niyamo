import 'package:flutter/material.dart';

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
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Center(child: Text('this.routine')),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent[200].withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              );
            }));
  }
}
