import 'package:catalog_app/main.dart';
import 'package:catalog_app/models/Model.dart';
import 'package:catalog_app/screens/HomeScreen.dart';
import 'package:catalog_app/widgets/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomedetailsPage extends StatelessWidget {
  final Item catalog;

  const HomedetailsPage({super.key, required this.catalog});

  //Item objItem = Item(); // creating object is not wrking
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MYtheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.image,
                  ).h32(context)),
              Expanded(
                  child: VxArc(
                edge: VxEdge.top,
                height: 10,
                arcType: VxArcType.convey,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl2
                          .color(MYtheme.darkBlueshColor)
                          .make()
                          .py8(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .make()
                          .pOnly(left: 10)
                          .p16(),
                      Text(
                        catalog.desc,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            catalog.price.toString(),
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ).p32(),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(MYtheme.darkBlueshColor),
                  /*  shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0),
                                //    side: BorderSide(color: Colors.red)
                              ))*/
                  shape: WidgetStatePropertyAll(StadiumBorder())),
              onPressed: null,
              child: Text(
                "buy now",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )).p32().wh(200, 100)
        ],
      ).color(Colors.white).pOnly(bottom: 12),
    );
  }
}
