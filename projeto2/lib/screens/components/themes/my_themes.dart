import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/themes/theme_color.dart';

// ignore: non_constant_identifier_names
ThemeData Mytheme = ThemeData(
  primarySwatch: ThemeColors.primarycolor, 
  primaryColor: ThemeColors.primarycolor,
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,),
      titleMedium: TextStyle(fontSize: 20,
      fontWeight: FontWeight.normal
      )
  ),
);