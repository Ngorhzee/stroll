import 'dart:ui';

import 'package:flutter/material.dart';

class Pallet{
  static const Color primaryColor = Color(0xffCCC8FF);
  static const Color primaryMedium = Color(0xff8B88EF);
  static const Color primaryAccent = Color(0xffB5B2FF);
  static const Color white = Color(0xffFFFFFF);
  static const MaterialColor black = MaterialColor(0xff0F1115, _blackColor);
  static const Color whiteLight = Color(0xffF5F5F5);
  static const Color whiteMedium = Color(0xffE5E5E5);
  static const Color grey = Color(0xff232A2E);
  static const Color greyLight = Color(0xffC4C4C4);
}
const Map<int, Color> _blackColor = {
  50: Color(0xFFBEBEBE),
  100: Color(0xFF24232F),

  200: Color(0xFF0D0E12),
  300: Color(0xFF110C0F),
  400: Color(0xFF090B0D),
  500: Color(0xFF090B0D),
  600: Color(0xff0F1115),
  700: Color(0xFF000000),

  800: Color(0xFF121518),
  900: Color(0xFF0B202B),
};