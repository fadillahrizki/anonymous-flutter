import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_filterFAB.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/product_card.dart';
import 'package:anonymous/components/search.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/drawer.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  final String assetName = '../../../assets/add.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: CustomColor().background,
      appBar: const CustomAppBar(title: "Manajemen Product"),
      drawer: const MyDrawer(),
<<<<<<< HEAD
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: CustomColor().white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: CustomColor().secondary)),
                child: DropdownMenu(
                  width: MediaQuery.of(context).size.width - 55,
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: Null, label: "Semua"),
                    DropdownMenuEntry(value: "Palu", label: "Palu"),
                    DropdownMenuEntry(value: "Cat", label: "Cat"),
                    DropdownMenuEntry(value: "Kran air", label: "Kran air"),
                  ],
                  hintText: "Pilih Kategori",
                  menuStyle: MenuStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          CustomColor().white)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 125,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: TextField(
                          maxLength: 30,
                          decoration: InputDecoration(
                              labelText: "Cari",
                              counterText: "",
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
                    padding: const EdgeInsets.all(2.4),
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
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
                child: ElevatedButton(
=======
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: <Widget>[
                const Search(),
                SizedBox(height: 12),
                ElevatedButton(
>>>>>>> df9465d026824a027460207eea00900943c527a0
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        width: 1,
                        color: CustomColor().secondary,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      CustomColor().white,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
<<<<<<< HEAD
                          flex: 3,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 20),
                            child: SizedBox(
                                width: 100,
                                height: 100,
                                child: SvgPicture.asset(assetName)),
                          )),
=======
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: SvgPicture.asset(assetName),
                          ),
                        ),
                      ),
>>>>>>> df9465d026824a027460207eea00900943c527a0
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 8),
                          child: Text(
                            "Tambah Produk",
                            style: TextStyle(
                              color: CustomColor().primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: ProductCard(
                        itemCode: "A000${index + 1}",
                        itemName: "Produk ${index + 1}",
                        itemPrice: "${(index + 1) * 10000}",
                        itemStock: index + 1,
<<<<<<< HEAD
                        itemidx: index),
                  );
                },
              ),
            ],
          )),
=======
                      ),
                    );
                  },
                )
              ],
            )),
      ),
>>>>>>> df9465d026824a027460207eea00900943c527a0
      floatingActionButton: const CustomFAB(),
    );
  }
}
