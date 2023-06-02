import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/product_card.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  final List<String> items = List<String>.generate(20, (i) => '$i');
  List menu = ["test", "hai", "dimana"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor().background,
        appBar: CustomAppBar(title: "Manajemen Product"),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                DropdownMenu(
                    dropdownMenuEntries: [],
                    width: 200,
                    menuStyle: MenuStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            CustomColor().white))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                        width: 420,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Cari",
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder()),
                          ),
                        )),
                    Icon(Icons.search)
                  ],
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  itemCount: items.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: ProductCard(
                          itemCode: "A000${index + 1}",
                          itemName: "Produk ${index + 1}",
                          itemPrice: "${(index + 1) * 10000}",
                          itemStock: index + 1),
                    );
                  },
                ),
              ],
            )));
  }
}
