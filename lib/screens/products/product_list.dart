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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor().background,
        appBar: const CustomAppBar(title: "Manajemen Product"),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: <Widget>[
                Container(
                  width: 300.0,
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        items: [],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 120,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Cari",
                                contentPadding: const EdgeInsets.all(8),
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
                  padding: const EdgeInsets.all(20),
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8),
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
