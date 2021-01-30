import 'package:flutter/material.dart';
import 'package:niyamo/splash.dart';

void main() {
  runApp(Niyamo());
}

class Niyamo extends StatefulWidget {
  @override
  _NiyamoState createState() => _NiyamoState();
}

class _NiyamoState extends State<Niyamo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}
