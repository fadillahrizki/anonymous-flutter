import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> products = [
    Product(
      code: "L0001",
      name: "Lem Fox Kaleng Besar",
      price: 60000,
      weight: "150g",
      stock: 10,
      image: "assets/product/lem_fox_kaleng.jpeg",
      category: "Lem & Perekat",
    ),
    Product(
      code: "L0002",
      name: "Lem Kambing Kaleng Kecil",
      price: 12000,
      weight: "20g",
      stock: 5,
      image: "assets/product/lem_kambing_kecil.jpeg",
      category: "Lem & Perekat",
    ),
    Product(
      code: "L0003",
      name: "Lem Kambing Odol",
      price: 10000,
      weight: "30g",
      stock: 20,
      image: "assets/product/lem_kambing_odol.jpeg",
      category: "Lem & Perekat",
    ),
    Product(
      code: "MT0001",
      name: "Martil Tanduk Fit",
      price: 45000,
      weight: "300g",
      stock: 10,
      image: "assets/product/martil_fit.jpg",
      category: "Martil",
    ),
    Product(
      code: "MT0002",
      name: "Martil Tanduk Gagang Fiber SBS",
      price: 35000,
      weight: "300g",
      stock: 12,
      image: "assets/product/martil_sbs.jpg",
      category: "Martil",
    ),
    Product(
      code: "MT0003",
      name: "Martil Tanduk Fukung - SBS",
      price: 35000,
      weight: "340g",
      stock: 6,
      image: "assets/product/martil_fukung.jpg",
      category: "Martil",
    ),
    Product(
      code: "MT0004",
      name: "Martil Tanduk Senyawa Fit",
      price: 75000,
      weight: "400g",
      stock: 7,
      image: "assets/product/martil_fit.jpg",
      category: "Martil",
    ),
    Product(
      code: "MT0005",
      name: "Martil Tanduk Soligen",
      price: 55000,
      weight: "380g",
      stock: 5,
      image: "assets/product/martil_soligen.jpg",
      category: "Martil",
    ),
    Product(
      code: "MT0006",
      name: "Martil Tanduk Yahomura",
      price: 50000,
      weight: "320g",
      stock: 13,
      image: "assets/product/martil_yahomura.jpg",
      category: "Martil",
    ),
    Product(
      code: "SK0001",
      name: "Stop Kran Onda JF 08 ST",
      price: 90000,
      weight: "120g",
      stock: 8,
      image: "assets/product/stop_kran.jpeg",
      category: "Stop Kran",
    ),
  ];
}

class Product {
  Product({
    required this.code,
    required this.name,
    required this.weight,
    required this.category,
    required this.image,
    required this.price,
    required this.stock,
  });

  String code, name, weight, category, image;
  double price, stock;
}
