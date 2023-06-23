import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_filter_fab.dart';
import 'package:anonymous/components/product_card.dart';
import 'package:anonymous/components/search.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/providers/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/drawer.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  final String assetName = 'assets/add.png';
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProductProvider>(context);
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
            const SizedBox(height: 12),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, '/product/add');
              },
              label: 'Tambah Produk',
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: prov.products.length,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/product/detail',
                            arguments: prov.products[index],
                          );
                        },
                        child: ProductCard(
                          itemCode: prov.products[index]['kode'],
                          itemName: prov.products[index]['nama'],
                          itemPrice: prov.products[index]['harga'],
                          itemStock: prov.products[index]['stock'],
                          itemImage: prov.products[index]['gambar'],
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
