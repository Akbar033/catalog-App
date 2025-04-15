import 'package:catalog_app/widgets/mytheme.dart';
import 'package:flutter/material.dart';

import '../widgets/CustomAppbar.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MYtheme.creamColor,
        appBar: CustomAppBar(),
        body: Center(
          child: Stack(
            children: [
              // Bottom Container (peeking out from right side)
              Positioned(
                top: 40,
                left: 20,
                right: 20, // leave space on right to show a peek
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),

              // Top Container (overlapping above the bottom one)
              Positioned(
                top: 20,
                left: 20,
                right: 20,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You dont have select any item here!",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.02,
                      ),
Text(
                        'SO0ry Dear',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
