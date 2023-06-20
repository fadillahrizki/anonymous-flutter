import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final _products = [
    {
      "Nama": "Lem Fox Kaleng Besar",
      "Harga": 60000,
      "berat": "150g",
      "stock": 10,
      "gambar": "assets/product/lem_fox_kaleng.jpeg",
      "kategori": "Lem & Perekat"
    },
    {
      "Nama": "Lem Kambing Kaleng Kecil",
      "Harga": 12000,
      "berat": "20g",
      "stock": 5,
      "gambar": "assets/product/lem_kambing_kecil.jpeg",
      "kategori": "Lem & Perekat"
    },
    {
      "Nama": "Lem Kambing Odol",
      "Harga": 10000,
      "berat": "30g",
      "stock": 20,
      "gambar": "assets/product/lem_kambing_odol.jpeg",
      "kategori": "Lem & Perekat"
    },
    {
      "Nama": "Martil Tanduk Fit",
      "Harga": 45000,
      "berat": "300g",
      "stock": 10,
      "gambar": "assets/product/martil_fit.jpg",
      "kategori": "Martil"
    },
    {
      "Nama": "Martil Tanduk Gagang Fiber SBS",
      "Harga": 35000,
      "berat": "300g",
      "stock": 12,
      "gambar": "assets/product/martil_sbs.jpg",
      "kategori": "Martil"
    },
    {
      "Nama": "Martil Tanduk Fukung - SBS",
      "Harga": 35000,
      "berat": "340g",
      "stock": 6,
      "gambar": "assets/product/martil_fukung.jpg",
      "kategori": "Martil"
    },
    {
      "Nama": "Martil Tanduk Senyawa Fit",
      "Harga": 75000,
      "berat": "400g",
      "stock": 7,
      "gambar": "assets/product/martil_fit.jpg",
      "kategori": "Martil"
    },
    {
      "Nama": "Martil Tanduk Soligen",
      "Harga": 55000,
      "berat": "380g",
      "stock": 5,
      "gambar": "assets/product/martil_soligen.jpg",
      "kategori": "Martil"
    },
    {
      "Nama": "Martil Tanduk Yahomura",
      "Harga": 50000,
      "berat": "320g",
      "stock": 13,
      "gambar": "assets/product/martil_yahomura.jpg",
      "kategori": "Martil"
    },
    {
      "Nama": "Stop Kran Onda JF 08 ST",
      "Harga": 90000,
      "berat": "120g",
      "stock": 8,
      "gambar": "assets/product/stop_kran.jpeg",
      "kategori": "Stop Kran"
    }
  ];

  Object get products => _products;
}
