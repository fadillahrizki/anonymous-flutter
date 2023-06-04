import 'package:flutter/material.dart';
import '../constants/custom_color.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.itemCode,
    required this.itemName,
    required this.itemPrice,
    required this.itemStock,
    this.itemImage = "",
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
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor().secondary, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: CustomColor().white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: CustomColor().primary,
                    child: Text(
                      widget.itemImage,
                      style:
                          TextStyle(color: CustomColor().white, fontSize: 12),
                    ),
                  ),
                )),
            const SizedBox(width: 20),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.itemCode,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.itemName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rp.${widget.itemPrice}',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: CustomColor().background,
                                borderRadius: BorderRadius.circular(8)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove),
                                iconSize: 18),
                          ),
                          Text(
                            '${widget.itemStock}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: CustomColor().background,
                                borderRadius: BorderRadius.circular(8)),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              iconSize: 18,
                            ),
                          ),
                        ]),
                    const SizedBox(height: 6),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      iconSize: 28)),
            ),
          ],
        ),
      ),
    );
  }
}
