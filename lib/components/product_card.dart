import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../constants/custom_color.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.itemCode,
    required this.itemName,
    required this.itemPrice,
    required this.itemStock,
    required this.itemidx,
    this.itemImage = "",
  });

  final String itemCode, itemName, itemImage;
  final int itemStock, itemidx, itemPrice;
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
                  backgroundImage: AssetImage(widget.itemImage),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: ((_) => AlertDialog(
                                  content: const Text(
                                      "Apakah Anda yakin ingin menghapus produk ini?"),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actions: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 350,
                                            height: 40,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    8),
                                                            side: BorderSide(
                                                                width: 0.5,
                                                                color: CustomColor()
                                                                    .secondary))),
                                                    elevation:
                                                        MaterialStateProperty.all(
                                                            1),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                CustomColor()
                                                                    .primary)),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Fluttertoast.showToast(
                                                    msg:
                                                        "Kode Toko sudah disalin!",
                                                    toastLength:
                                                        Toast.LENGTH_SHORT,
                                                    gravity:
                                                        ToastGravity.BOTTOM,
                                                    webBgColor: "#333",
                                                    webPosition: "center",
                                                    timeInSecForIosWeb: 2,
                                                    backgroundColor:
                                                        CustomColor().primary,
                                                    textColor: Colors.white,
                                                    fontSize: 16.0,
                                                  );
                                                },
                                                child: Text(
                                                  "Hapus",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          CustomColor().white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                          const SizedBox(height: 25),
                                          SizedBox(
                                            width: 350,
                                            height: 40,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            side: BorderSide(
                                                                width: 0.5,
                                                                color: CustomColor()
                                                                    .secondary))),
                                                    elevation:
                                                        MaterialStateProperty.all(
                                                            1),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<
                                                                Color>(
                                                            CustomColor().white)),
                                                child: Text(
                                                  "Batal",
                                                  style: TextStyle(
                                                      color:
                                                          CustomColor().primary,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )));
                      },
                      icon: const Icon(Icons.delete),
                      iconSize: 28)),
            ),
          ],
        ),
      ),
    );
  }
}
