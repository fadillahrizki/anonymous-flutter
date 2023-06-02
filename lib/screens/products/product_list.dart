import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/product_card.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/drawer.dart';

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
        appBar: const CustomAppBar(title: "Manajemen Product"),
        drawer: const MyDrawer(),
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
                  children: [
                    SizedBox(
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, right: 8),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Cari",
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1.5,
                                        color: CustomColor().secondary)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1.5,
                                        color: CustomColor().secondary))),
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: CustomColor().white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              width: 1.5, color: CustomColor().secondary),
                          borderRadius: BorderRadius.circular(8)),
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                    )
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
