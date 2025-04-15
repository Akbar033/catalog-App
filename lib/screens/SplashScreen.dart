import 'dart:async';

import 'package:catalog_app/screens/HomeScreen.dart';
import 'package:catalog_app/screens/Login.dart';
import 'package:flutter/material.dart';

class Splash_Screnneen extends StatefulWidget {
  const Splash_Screnneen({super.key});

  @override
  State<Splash_Screnneen> createState() => _Splash_ScrenneenState();
}

class _Splash_ScrenneenState extends State<Splash_Screnneen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 15), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
