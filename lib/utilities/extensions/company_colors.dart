import 'package:flutter/material.dart';

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class

  static const MaterialColor accent = MaterialColor(0xFF0D5FFF, <int, Color>{
    50: Color.fromRGBO(13, 95, 255, .1),
    100: Color.fromRGBO(13, 95, 255, .2),
    200: Color.fromRGBO(13, 95, 255, .3),
    300: Color.fromRGBO(13, 95, 255, .4),
    400: Color.fromRGBO(13, 95, 255, .5),
    500: Color.fromRGBO(13, 95, 255, .6),
    600: Color.fromRGBO(13, 95, 255, .7),
    700: Color.fromRGBO(13, 95, 255, .8),
    800: Color.fromRGBO(13, 95, 255, .9),
    900: Color.fromRGBO(13, 95, 255, 1),
  });
}
