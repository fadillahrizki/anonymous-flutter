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
  final String assetName = 'assets/add.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Tambah Produk"),
      drawer: const MyDrawer(active: "Manajemen Produk"),
      backgroundColor: CustomColor().background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: SvgPicture.asset(assetName),
              ),
              const CustomTextField(label: "Nama Produk *"),
              const SizedBox(height: 12),
              const CustomTextField(label: "Jumlah Stock"),
              const SizedBox(height: 12),
              const CustomTextField(label: "Harga Produk"),
              const SizedBox(height: 12),
              const CustomTextField(label: "Berat (Kg)"),
              const SizedBox(height: 12),
              const CustomTextField(label: "Kategori Produk"),
              const SizedBox(height: 24),
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
      ),
    );
  }
}
