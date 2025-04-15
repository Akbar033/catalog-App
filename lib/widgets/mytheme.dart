import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MYtheme{

  static ThemeData lightTheme(BuildContext context) { return
    ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts
            .poppins()
            .fontFamily,
        //primaryTextTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme( //actionsIconTheme: IconThemeData(color: Colors.black),
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: Theme
            .of(context)
            .textTheme
    );
  }

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    //brightness: Brightness.dark );
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      textTheme: Theme.of(context).textTheme
  );
  static Color creamColor = Color(0xfff5f5f5) ;
  static Color darkcream = Color(0xfe445); // or vx.grey800
  static Color darkBlueshColor = Color(0xff403b58);
  static Color lightBluesh =  Vx.amber600;
}

//both work => and {} but return is used
