import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
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
  final String assetName = 'assets/add.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: CustomColor().background,
      appBar: const CustomAppBar(title: "Manajemen Produk"),
      drawer: const MyDrawer(active: "Manajemen Produk"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            const Search(),
            SizedBox(height: 12),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, '/product/add');
              },
              label: 'Tambah Produk',
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/product/detail');
                        },
                        child: ProductCard(
                          itemCode: "A000${index + 1}",
                          itemName: "Produk ${index + 1}",
                          itemPrice: "${(index + 1) * 10000}",
                          itemStock: index + 1,
                          itemidx: index,
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const CustomFAB(),
    );
  }
}
