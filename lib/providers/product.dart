import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final _products = [
    {
      "kode": "L0001",
      "nama": "Lem Fox Kaleng Besar",
      "harga": 60000,
      "berat": "150g",
      "stock": 10,
      "gambar": "assets/product/lem_fox_kaleng.jpeg",
      "kategori": "Lem & Perekat"
    },
    {
      "kode": "L0002",
      "nama": "Lem Kambing Kaleng Kecil",
      "harga": 12000,
      "berat": "20g",
      "stock": 5,
      "gambar": "assets/product/lem_kambing_kecil.jpeg",
      "kategori": "Lem & Perekat"
    },
    {
      "kode": "L0003",
      "nama": "Lem Kambing Odol",
      "harga": 10000,
      "berat": "30g",
      "stock": 20,
      "gambar": "assets/product/lem_kambing_odol.jpeg",
      "kategori": "Lem & Perekat"
    },
    {
      "kode": "MT0001",
      "nama": "Martil Tanduk Fit",
      "harga": 45000,
      "berat": "300g",
      "stock": 10,
      "gambar": "assets/product/martil_fit.jpg",
      "kategori": "Martil"
    },
    {
      "kode": "MT0002",
      "nama": "Martil Tanduk Gagang Fiber SBS",
      "harga": 35000,
      "berat": "300g",
      "stock": 12,
      "gambar": "assets/product/martil_sbs.jpg",
      "kategori": "Martil"
    },
    {
      "kode": "MT0003",
      "nama": "Martil Tanduk Fukung - SBS",
      "harga": 35000,
      "berat": "340g",
      "stock": 6,
      "gambar": "assets/product/martil_fukung.jpg",
      "kategori": "Martil"
    },
    {
      "kode": "MT0004",
      "nama": "Martil Tanduk Senyawa Fit",
      "harga": 75000,
      "berat": "400g",
      "stock": 7,
      "gambar": "assets/product/martil_fit.jpg",
      "kategori": "Martil"
    },
    {
      "kode": "MT0005",
      "nama": "Martil Tanduk Soligen",
      "harga": 55000,
      "berat": "380g",
      "stock": 5,
      "gambar": "assets/product/martil_soligen.jpg",
      "kategori": "Martil"
    },
    {
      "kode": "MT0006",
      "nama": "Martil Tanduk Yahomura",
      "harga": 50000,
      "berat": "320g",
      "stock": 13,
      "gambar": "assets/product/martil_yahomura.jpg",
      "kategori": "Martil"
    },
    {
      "kode": "SK0001",
      "nama": "Stop Kran Onda JF 08 ST",
      "harga": 90000,
      "berat": "120g",
      "stock": 8,
      "gambar": "assets/product/stop_kran.jpeg",
      "kategori": "Stop Kran"
    }
  ];

  List get products => _products;
}
