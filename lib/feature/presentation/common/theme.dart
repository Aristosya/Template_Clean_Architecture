import 'package:flutter/material.dart';

final darkTheme = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    color: Colors.black26
  ),
    primaryColor: Colors.white,
);

final lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    color: Colors.white60
  ),
  primaryColor: Colors.black,
);