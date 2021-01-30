import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/constants/carouselz.dart';
import 'package:niyamo/constants/routine-list.dart';

class Homey extends StatefulWidget {
  @override
  _HomeyState createState() => _HomeyState();
}

class _HomeyState extends State<Homey> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: [
      Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.width * 0.1),
        child: Text(
          'explore',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              decoration: TextDecoration.overline),
        ),
      ),
      Caraou(),
      Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.1),
        child: Text(
          'your routine',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              decoration: TextDecoration.overline),
        ),
      ),
      // Expanded(child: RoutineList())
      Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.35,
            right: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.05),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: AppTheme.ellowPinky,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(15),
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, f) {
              int day = DateTime.now().day + f;
              return FittedBox(
                child: Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.only(right: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: day == DateTime.now().day
                        ? Colors.cyan[400]
                        : Colors.amber[500],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (day < 32)
                              ? "${DateTime.now().day + f}"
                              : (day == 32)
                                  ? 1.toString()
                                  : (f).toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: day == DateTime.now().day
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: day == DateTime.now().day
                                ? Colors.black
                                : Colors.black,
                          ),
                        ),
                        Text(
                          DateFormat('EE').format(
                            DateTime.now().add(
                              Duration(days: f),
                            ),
                          ),
                          style: TextStyle(
                              color: day == DateTime.now().day
                                  ? Colors.black
                                  : Colors.black,
                              fontWeight: day == DateTime.now().day
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ]));
  }
}
