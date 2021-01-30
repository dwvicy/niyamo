import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightYellow = Color(0xFFFFE18E);
  static const Color ellowPinky = Color(0xFFFC5866);
  static const Color pinky = Color(0xFFFC588A);
  static const Color gray = Color(0xFF6F6F6F);
  static const Color lightGreen = Color(0xFFDFF8D4);
  static const Color green = Color(0xFF94E870);
}

class Style {
  static const TextStyle bigHead = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.black54);
  static const TextStyle productName = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black54);
  static const TextStyle productDesc = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: AppTheme.gray,
  );
  static const TextStyle productPrice = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.black54,
  );
}
