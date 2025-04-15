import 'package:catalog_app/main.dart';
import 'package:catalog_app/models/Model.dart';
import 'package:catalog_app/utility/routes.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/mytheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
import '../models/ItemModel.dart';
import '../widgets/CustomAppbar.dart';
import '../widgets/HomeWidgets/CatalogHeader.dart';
import '../widgets/HomeWidgets/CatalogList.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final ecommerce = await rootBundle.loadString("assets/file/ecommerce.json");
    final decodedData = jsonDecode(ecommerce);
    var productData = decodedData["products"];
    CatalogModel.Items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, (index) => CatalogModel.Items[0]);
    return Scaffold( appBar: CustomAppBar(),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MYtheme.darkBlueshColor,
        foregroundColor: Colors.white,
        shape: Vx.rounded,
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.CartRout);
        },
        child: Icon(CupertinoIcons.shopping_cart),
      ),

      backgroundColor: MYtheme.creamColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                Catalogheader(),
                if (CatalogModel.Items != null && CatalogModel.Items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().py20().expand()
              ],
            )),
      ),
      // backgroundColor: Colors.white,
      /* appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Catalog App',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: (CatalogModel.Items != null && CatalogModel.Items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    final anyThings = CatalogModel.Items[index];

                    return Card(
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: GridTile(
                            header: Container(
                              child: Text(
                                anyThings.name,
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                              ),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(color: Colors.white),
                                child: Text(
                                  anyThings.price.toString(),
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ),
                            child: Image.network(
                              anyThings.image,
                            )));
                  },
                  itemCount: CatalogModel.Items.length,
                )
              //{return  you can use both short hand operator and return

              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),*/
    );
  }
}
