import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/custom_color.dart';
import 'custom_button.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.itemCode,
    required this.itemName,
    required this.itemPrice,
    required this.itemStock,
    this.itemImage = "Gambar Produk",
  });

  final String itemCode, itemName, itemPrice, itemImage;
  final int itemStock;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor().secondary),
          borderRadius: BorderRadius.circular(8),
          color: CustomColor().white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: CustomColor().primary,
              child: Text(
                widget.itemImage,
                style: TextStyle(color: CustomColor().white, fontSize: 12),
              ),
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itemCode,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  widget.itemName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(
                  'Rp.${widget.itemPrice}',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: CustomColor().background,
                              borderRadius: BorderRadius.circular(8)),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50.0, top: 15),
                        child: Text(
                          '${widget.itemStock}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: CustomColor().background,
                              borderRadius: BorderRadius.circular(8)),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        ),
                      ),
                    ]),
                const SizedBox(height: 6),
              ],
            ),
            Align(
              child: Icon(Icons.delete),
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }
}
