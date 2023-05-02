import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color gray30059 = fromHex('#59d6e6e4');

  static Color red400 = fromHex('#ef574b');

  static Color cyan10001 = fromHex('#b9f3ec');

  static Color black9003f = fromHex('#3f000000');

  static Color greenA400 = fromHex('#2dcc70');

  static Color teal300 = fromHex('#5abbaf');

  static Color black900 = fromHex('#000000');

  static Color whiteA70056 = fromHex('#56ffffff');

  static Color blueGray800 = fromHex('#3f414e');

  static Color redA700 = fromHex('#ff0000');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#868889');

  static Color blueGray300 = fromHex('#a1a4b2');

  static Color blueGray600 = fromHex('#3e7d75');

  static Color amber600 = fromHex('#ffb700');

  static Color gray100 = fromHex('#f6f1fa');

  static Color tealA400 = fromHex('#00ecd0');

  static Color cyan200 = fromHex('#81efe2');

  static Color gray10003 = fromHex('#f6f1fb');

  static Color gray10002 = fromHex('#f2f2f7');

  static Color cyan100 = fromHex('#c4ebe7');

  static Color gray10004 = fromHex('#f4f5f9');

  static Color gray10001 = fromHex('#f2f3f7');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
