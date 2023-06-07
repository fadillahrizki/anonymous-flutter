import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => AddProductState();
}

class AddProductState extends State<AddProduct> {
  final String assetName = '../../../assets/add.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Tambah Produk"),
      drawer: const MyDrawer(),
      backgroundColor: CustomColor().background,
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: SvgPicture.asset(assetName),
            ),
            const CustomTextField(
              label: "Nama Produk *",
            ),
            const CustomTextField(
              label: "Jumlah Stock",
            ),
            const CustomTextField(
              label: "Harga Produk",
            ),
            const CustomTextField(
              label: "Berat (Kg)",
            ),
            const CustomTextField(
              label: "Kategori Produk",
            ),
            const SizedBox(height: 8),
            CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                  Fluttertoast.showToast(
                    msg: "Produk Berhasil Ditambahkan!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    webBgColor: "#333",
                    webPosition: "center",
                    timeInSecForIosWeb: 2,
                    backgroundColor: CustomColor().primary,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                label: "Tambah Produk")
          ],
        ),
      ),
    );
  }
}
