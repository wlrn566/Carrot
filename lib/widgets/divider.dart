import 'package:flutter/material.dart';

Widget getDivider({
  double thickness = 1,
  Color color = const Color.fromARGB(255, 226, 225, 225),
}) {
  return Divider(thickness: 1, color: color, height: 0);
}