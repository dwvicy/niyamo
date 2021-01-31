import 'package:flutter/material.dart';

class SpinningWheel extends StatefulWidget {
  final double width;
  final double height;
  final Image image;

  SpinningWheel(this.image, {@required this.width, @required this.height});

  @override
  _SpinningWheelState createState() => _SpinningWheelState();
}

class _SpinningWheelState extends State<SpinningWheel>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));
  }

  _startOrStop() {
    print(
        'start/stop ${_animationController.status} - ${_animationController.isAnimating}');
    if (_animationController.isAnimating) {
      _animationController.stop();
    } else {
      _animationController.reset();
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: widget.height,
        width: widget.width,
        child: AnimatedBuilder(
            animation: _animation,
            child: Container(child: widget.image),
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value,
                child: child,
              );
            }),
      ),
      SizedBox(height: 30),
      RaisedButton(
        child: Text('Start/Stop'),
        onPressed: _startOrStop,
      )
    ]);
  }
}
