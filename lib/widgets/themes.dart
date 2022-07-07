import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      //brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: Colors.white,//for background page color
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


//bark theme
  static ThemeData get dark2 => ThemeData.dark();


//test theme
  static ThemeData get darkTheme =>
      ThemeData(
        //backgroundColor: Colors.black,
          brightness: Brightness.dark,
         // primarySwatch: Colors.,// switch color button
         // canvasColor: Colors.black,
        //  buttonColor: Colors.white,
          fontFamily: GoogleFonts.poppins().fontFamily,
          appBarTheme: AppBarTheme(
             // color: Colors.white,
              //iconTheme: IconThemeData(color: Colors.black),
             // foregroundColor: Colors.black
          )
      );



  ////color

  //static Color cream = Color(0xffeedddd);
 // static Color cream = Color(0xffeedddd);
 // static Color cream = Color(0xffeedddd);
}