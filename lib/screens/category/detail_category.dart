import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_filter_fab.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/product_card.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/drawer.dart';
import '../../providers/product.dart';

class DetailCategory extends StatefulWidget {
  const DetailCategory({super.key});

  @override
  State<DetailCategory> createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProductProvider>(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: CustomColor().background,
      appBar: const CustomAppBar(title: "Detail Kategori"),
      drawer: const MyDrawer(active: "Manajemen Kategori"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomTextField(label: "Nama Kategori"),
              const SizedBox(height: 12),
              CustomButton(
                onPressed: () {},
                label: "Simpan Kategori",
              ),
              const SizedBox(height: 12),
              CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                label: "Kembali",
                type: 'secondary',
              ),
              const SizedBox(height: 24),
              Text("List Produk"),
              const SizedBox(height: 24),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFAB(),
    );
  }
}
