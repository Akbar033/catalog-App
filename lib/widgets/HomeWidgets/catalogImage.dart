import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../mytheme.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .py4
        .color(MYtheme.creamColor)
        .make()
        .py12()
        .w32(context);
  }
}
