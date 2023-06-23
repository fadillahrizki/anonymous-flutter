import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => DetailProductState();
}

class DetailProductState extends State<DetailProduct> {
  String assetName = 'assets/produk.png';

  late TextEditingController nameController,
      stockController,
      priceController,
      weightController,
      categoryController;

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    stockController.dispose();
    priceController.dispose();
    weightController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    nameController = TextEditingController(text: args['nama']);
    stockController = TextEditingController(text: args['stock'].toString());
    priceController = TextEditingController(text: args['harga'].toString());
    weightController = TextEditingController(text: args['berat']);
    categoryController = TextEditingController(text: args['kategori']);
    assetName = args['gambar'];

    return Scaffold(
      appBar: const CustomAppBar(title: "Detail Produk"),
      drawer: const MyDrawer(active: "Manajemen Produk"),
      backgroundColor: CustomColor().background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(assetName),
                backgroundColor: Colors.transparent,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nama Produk',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: nameController),
                  const SizedBox(height: 12),
                  const Text(
                    'Stock',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: stockController),
                  const SizedBox(height: 12),
                  const Text(
                    'Harga',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: priceController),
                  const SizedBox(height: 12),
                  const Text(
                    'Berat',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: weightController),
                  const SizedBox(height: 12),
                  const Text(
                    'Kategori',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: categoryController),
                  const SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        isEditing = !isEditing;
                      });
                    },
                    label:
                        isEditing ? "Konfirmasi Perubahan" : "Perbarui Produk",
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: "Kembali",
                    type: 'secondary',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
