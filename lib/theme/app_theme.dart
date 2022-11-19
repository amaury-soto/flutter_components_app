import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //primary color
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      //theme button
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      //FloatingActionButtons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //ElevationButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0),
      ),
      
      //InputDecotarionTheme
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color:primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary), 
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10), topRight: Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary), 
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10), topRight: Radius.circular(10))
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ) 
      )
      
      );
}
