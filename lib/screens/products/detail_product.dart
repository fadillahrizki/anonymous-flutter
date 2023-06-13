import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => DetailProductState();
}
  

class DetailProductState extends State<DetailProduct> {
  final String assetName = '../../../../assets/produk.png';
  late TextEditingController nameController,
      stockController,
      priceController,
      weightController,
      categoryController;

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: 'Martil Tanduk Fukung');
    stockController = TextEditingController(text: '10');
    priceController = TextEditingController(text: '60000');
    weightController = TextEditingController(text: '1.5');
    categoryController = TextEditingController(text: 'Martil');
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
    return Scaffold(
      appBar: const CustomAppBar(title: "Detail Produk"),
      drawer: const MyDrawer(),
      backgroundColor: CustomColor().background,
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
        children: [ 
          Center(
          child: SizedBox(
              width: 150,
              height: 150,
              child: Image.network(assetName)
            ),
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
              const SizedBox(height: 12),          
            const SizedBox(height: 8),
            CustomButton(
              onPressed: () {
                setState(() {
                  isEditing = !isEditing;
                });
              },
              label: isEditing? "Konfirmasi Perubahan" : "Perbarui Produk")
          ],
        ),])
      ),
    );
  }
}