import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../constants/custom_color.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    super.key,
    required this.itemCode,
    required this.itemName,
    required this.itemPrice,
    required this.itemStock,
    required this.itemidx,
    this.itemImage = "",
  });

  String itemCode, itemName, itemImage;
  int itemStock, itemidx, itemPrice;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  deleteProduct(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text(
          "Apakah Anda yakin ingin menghapus produk ini?",
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Batal",
              style: TextStyle(color: CustomColor().primary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Fluttertoast.showToast(
                msg: "Produk berhasil dihapus!",
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
            child: Text(
              "Hapus",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  updateStock(val) {
    setState(() {
      if (val >= 0) widget.itemStock = val;
    });
  }

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
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(widget.itemImage),
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: 24),
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
                    SizedBox(height: 6),
                    Text(
                      widget.itemName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  updateStock(widget.itemStock - 1);
                                },
                                icon: const Icon(Icons.remove),
                                iconSize: 18),
                          ),
                          Text(
                            '${widget.itemStock}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: CustomColor().background,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              onPressed: () {
                                updateStock(widget.itemStock + 1);
                              },
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
                  icon: const Icon(Icons.delete),
                  iconSize: 28,
                  onPressed: () {
                    deleteProduct(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
