import 'package:flutter/material.dart';

class TextStyleComp {
  static TextStyle myTextStyle({double size = 14.0, color, fontWeight}) {
    return TextStyle(
      fontSize: size,
      color: color ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
