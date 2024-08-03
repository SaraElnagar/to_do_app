import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/app_colors.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundLightColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.backgroundLightColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // selectedLabelStyle: TextStyle(fontSize: 20),
        // unselectedLabelStyle: TextStyle(fontSize: 20),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor),
      titleMedium: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor),
      bodyLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor),
      bodyMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.blackColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // selectedLabelStyle: TextStyle(fontSize: 20),
        // unselectedLabelStyle: TextStyle(fontSize: 20),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.whiteColor,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor),
      titleMedium: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor),
      bodyLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.whiteColor),
      bodyMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor),
    ),
  );
}
