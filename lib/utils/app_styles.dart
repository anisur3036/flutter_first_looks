import 'package:flutter/material.dart';

Color primary = const Color(0xFFFF5722);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color orangeColor = const Color(0xFFE2842C);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle heading_1 = TextStyle(
    fontSize: 28,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle heading_2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle heading_3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle heading_4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}
