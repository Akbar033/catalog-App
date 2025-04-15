import 'package:catalog_app/screens/HomeDetails.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/Model.dart';
import '../../screens/HomeScreen.dart';
import '../mytheme.dart';
import 'catalogImage.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

//final catalog = CatalogModel.Items[index]; not workiing
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModel.Items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.Items[index]; // working
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomedetailsPage(
                            catalog: catalog,
                          )));
            },
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  CatalogItem({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: VxBox(
          child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                catalog.name.text.bold.xl.color(MYtheme.darkBlueshColor).make(),
                10.heightBox,
                catalog.desc.text
                    .textStyle(context.captionStyle)
                    .make()
                    .py12()
                    .pOnly(left: 10),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}"
                          .text
                          .bold
                          .green600
                          .bold
                          .make()
                          .pOnly(left: 8),
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                      MYtheme.darkBlueshColor),
                                  /*  shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0),
                                //    side: BorderSide(color: Colors.red)
                              ))*/
                                  shape:
                                      WidgetStatePropertyAll(StadiumBorder())),
                              onPressed: null,
                              child: Text(
                                "buy now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                          ).pOnly(right: 8))
                    ])
              ]))
        ],
      )).white.py20.rounded.square(200).make(),
    );
  }
}
