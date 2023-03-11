import 'package:flutter/material.dart';

// todo - for future boilerplates, fonts etc, modifiy this
abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        splashColor: Colors.transparent,
        fontFamily: 'IBM',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black));
  }
}
