import 'package:flutter/material.dart';

import 'Model.dart';

class ItemWidget extends StatelessWidget {
  // Item is a class which was created in catalod file
  final Item item;

  ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text(
        "\$${item.price}",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    );
  }
}
