import 'package:carrot/utils/color.dart';
import 'package:flutter/material.dart';

Widget getTextFont12({
  required String text,
  required Color color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12.0,
      fontWeight: fontWeight,
      color: color
    ),
  );
}
Widget getTextFont13({
  required String text,
  required Color color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 13.0,
      fontWeight: fontWeight,
      color: color
    ),
  );
}
Widget getTextFont14({
  required String text,
  required Color color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14.0,
      fontWeight: fontWeight,
      color: color
    ),
  );
}
Widget getTextFont15({
  required String text,
  required Color color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 15.0,
      fontWeight: fontWeight,
      color: color
    ),
  );
}