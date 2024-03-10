import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color lightColor = Color(0xffF8F3ED);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: const Color(0xff795548),
          titleTextStyle: GoogleFonts.amiri(
              textStyle: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))
      ),
      scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.brown,
      selectedLabelStyle: GoogleFonts.amiri(),
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: GoogleFonts.amiri(),
      backgroundColor: const Color(0xffF8F3ED),
      selectedIconTheme: const IconThemeData(size: 40),
      unselectedIconTheme: const IconThemeData(size: 34),
      showUnselectedLabels: true
    )
  );
}
