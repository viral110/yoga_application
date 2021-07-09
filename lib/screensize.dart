import 'package:flutter/material.dart';

double sheight = 0;
double swidth = 0;

class ScreenSize {
  static setSize(BuildContext context) {
    sheight = MediaQuery.of(context).size.height;
    swidth = MediaQuery.of(context).size.width;
  }
}
