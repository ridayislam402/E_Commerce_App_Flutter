import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          //iconTheme: IconThemeData(color: Colors.black),
          foregroundColor: Colors.black
      )
  );

 /* static ThemeData themeData2(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          //iconTheme: IconThemeData(color: Colors.black),
          foregroundColor: Colors.black
      )
  );*/



//test theme
  static ThemeData get darkTheme =>
      ThemeData.dark();



  ////color

  //final Color color = Color(072A6C);
}