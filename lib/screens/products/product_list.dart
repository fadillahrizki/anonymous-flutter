import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_filter_fab.dart';
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
      appBar: const CustomAppBar(title: "Manajemen Produk"),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: <Widget>[
                const Search(),
                SizedBox(height: 12),
                ElevatedButton(
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/product/add');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: SvgPicture.asset(assetName),
                          ),
                        ),
                      ),
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
                const SizedBox(height: 12),
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: InkWell( 
                        onTap: () {
                          Navigator.pushNamed(context, '/product/detail');
                        },
                      child : ProductCard(
                        itemCode: "A000${index + 1}",
                        itemName: "Produk ${index + 1}",
                        itemPrice: "${(index + 1) * 10000}",
                        itemStock: index + 1,
                        itemidx: index,
                      ),
                    )
                    );
                  },
                )
              ],
            )),
      ),
      floatingActionButton: const CustomFAB(),
    );
  }
}
