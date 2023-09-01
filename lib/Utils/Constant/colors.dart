// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppColor {
  // appcolors._();
  static const Color transparent = Color(0xff000000000);

// !Rendom Colors
  static const Color GRAY_COLOR = Colors.grey;
  static const Color BROWN_COLOR = Colors.brown;
  static const Color RED_COLOR = Colors.red;
  static const Color ORANGE_COLOR = Colors.orange;
  static const Color BLUE_COLOR = Colors.blue;
  static const Color GREEN_COLOR = Colors.green;
  static const Color WHITE_COLOR = Colors.white;

// ! Text Colors
  static const Color Dark_Text = Color(0xFF1f2638);
  static const Color Grey_Text = Color(0xff999B9F);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
