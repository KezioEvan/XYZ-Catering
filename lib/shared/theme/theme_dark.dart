import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

ThemeData getDarkTheme() {
  return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        elevation: 0.6,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.white,
      ),
      textTheme: TextTheme(
        titleSmall: GoogleFonts.poppins(
          color: Colors.white,
        ),
        titleMedium: GoogleFonts.poppins(
          color: Colors.white,
        ),
        titleLarge: GoogleFonts.poppins(
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.poppins(
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.poppins(
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.poppins(
          color: Colors.white,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: greenEmerland,
      ));
}
