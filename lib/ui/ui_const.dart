import 'package:flutter/material.dart';

const Color colorCoolBlue = Color(0xFF3BB2E2);

extension ColorOpacity on Color {
  Color get opacity75 => withOpacity(0.75);
  Color get opacity50 => withOpacity(0.5);
  Color get opacity25 => withOpacity(0.25);
  Color get opacity10 => withOpacity(0.1);
}