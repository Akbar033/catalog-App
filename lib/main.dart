import 'package:catalog_app/models/theme%20changer/changeTheme.dart';
import 'package:catalog_app/screens/HomeScreen.dart';
import 'package:catalog_app/screens/Login.dart';
import 'package:catalog_app/screens/SIgnUp.dart';
import 'package:catalog_app/screens/cartPage.dart';
import 'package:catalog_app/utility/routes.dart';
import 'package:catalog_app/widgets/mytheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CatalogApp());
}

class CatalogApp extends StatelessWidget {
  const CatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ToggleTheme().chnageMode(),
      theme: MYtheme.lightTheme(context),
      darkTheme: MYtheme.darkTheme(context),
      // by default whicg is light theme
      //darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.signUpRoute,
      routes: {
      //  "/": (context) => LoginPage(),
        // "/SplashScreen": (context) => Splash_Screnneen(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.CartRout: (context)=> Cartpage(),
        MyRoutes.signUpRoute: (context)=> Signup(),
      },
    );
  }
}

