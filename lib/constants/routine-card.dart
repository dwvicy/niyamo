import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:niyamo/constants/AppTheme.dart';

class RoutineCard extends StatefulWidget {
  @override
  _RoutineCardState createState() => _RoutineCardState();
}

class _RoutineCardState extends State<RoutineCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'meditation',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.18,
              left: MediaQuery.of(context).size.width * 0.3,
              child: LikeButton(
                size: 30,
                circleColor: CircleColor(
                    start: AppTheme.lightYellow, end: AppTheme.ellowPinky),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: AppTheme.ellowPinky,
                  dotSecondaryColor: AppTheme.pinky,
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    LineIcons.heart,
                    color: isLiked ? AppTheme.pinky : Colors.grey,
                    size: 30,
                  );
                },
                countBuilder: (int count, bool isLiked, String text) {
                  var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "love",
                      style: TextStyle(color: Colors.black),
                    );
                  } else
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  return result;
                },
              ),
            )
          ]),
          decoration: BoxDecoration(
              color: Colors.orangeAccent[200].withOpacity(0.6),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
