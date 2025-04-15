import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../mytheme.dart';

class Catalogheader extends StatelessWidget {
  const Catalogheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catalog App".text.xl3.bold.color(MYtheme.darkBlueshColor).make().w(context.screenWidth),
          "trending product".text.xl.color(Colors.blue).make(),
        ],
      ),
    );
  }
}
