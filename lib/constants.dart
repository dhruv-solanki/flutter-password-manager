import 'package:flutter/material.dart';

Color green = Colors.greenAccent;
Color red = Colors.redAccent;
Color grey = Colors.grey;

OutlineInputBorder greenInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: green,
  ),
);

OutlineInputBorder redInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: red,
  ),
);

OutlineInputBorder greyInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: grey,
  ),
);
