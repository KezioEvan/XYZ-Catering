import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.grey[300],
    appBarTheme: AppBarTheme(
      backgroundColor: appbarBackgroundColor,
      elevation: 0.6,
      titleTextStyle: GoogleFonts.poppins(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blueGrey[900]!,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blueGrey[900]!,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.poppins(
        color: Colors.blueGrey[900],
      ),
      titleMedium: GoogleFonts.poppins(
        color: Colors.blueGrey[900],
      ),
      titleLarge: GoogleFonts.poppins(
        color: Colors.blueGrey[900],
      ),
      bodyLarge: GoogleFonts.poppins(
        color: Colors.blueGrey[900],
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.blueGrey[900],
      ),
      bodyMedium: GoogleFonts.poppins(
        color: Colors.blueGrey[900],
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: greenEmerland,
    ),
  );
}
