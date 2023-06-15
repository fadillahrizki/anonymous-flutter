import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_filter_fab.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/product_card.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/drawer.dart';

class DetailCategory extends StatefulWidget {
  const DetailCategory({super.key});

  @override
  State<DetailCategory> createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  final String assetName = '../../../assets/add.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: CustomColor().background,
      appBar: const CustomAppBar(title: "Detail Kategori"),
      drawer: const MyDrawer(active: "Manajemen Kategori"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CustomTextField(label: "Nama Kategori"),
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
                )
              ],
            )),
      ),
      floatingActionButton: const CustomFAB(),
    );
  }
}
