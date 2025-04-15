import 'package:flutter/material.dart';
class ToggleTheme{
    bool isDarkTheme = false;

    ThemeMode chnageMode() => isDarkTheme ? ThemeMode.dark : ThemeMode.light;


   void toggleTheme(){
isDarkTheme = !isDarkTheme;
   }

}