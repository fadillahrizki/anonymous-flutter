import 'package:flutter/material.dart';

class ProductFilterBottomSheet extends StatelessWidget {
  const ProductFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration:
              const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
          child: const ListTile(
            title: Text(
              "Urutkan Berdasarkan",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
          child: ListTile(
            title: const Text(
              "Nama Produk",
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
          child: ListTile(
            title: const Text(
              "Harga",
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
          child: ListTile(
            title: const Text(
              "Jumlah Stock",
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
