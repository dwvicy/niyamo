import 'package:flutter/material.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/screens/nav.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          backgroundColor: AppTheme.offWhite,
          appBarTheme: AppBarTheme(
              actionsIconTheme: IconThemeData(color: AppTheme.pinky),
              iconTheme: IconThemeData(color: AppTheme.pinky),
              centerTitle: true)),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage()
      },
    );
  }
}
