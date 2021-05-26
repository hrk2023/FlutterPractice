
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: 1, 
    offset: Offset(-5, -5), 
    blurRadius: 5
  ),
  BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 1,
    offset: Offset(7, 7),
    blurRadius: 5
  )
];