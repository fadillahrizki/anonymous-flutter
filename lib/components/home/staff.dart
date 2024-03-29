import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../custom_button.dart';
import '../statistic_card.dart';

class Staff extends StatelessWidget {
  const Staff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
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
                    radius: 40,
                    backgroundColor: CustomColor().primary,
                    child: Text(
                      'Toko A',
                      style:
                          TextStyle(color: CustomColor().white, fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Toko A',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'deskripsi toko singkat',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const StatisticCard(
              title: 'Total Produk',
              subtitle: '50 Produk',
              text: 'Produk',
            ),
            const SizedBox(height: 12),
            const StatisticCard(
              title: 'Total Kategori',
              subtitle: '50 Kategori',
              text: 'Kategori',
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(8),
                color: Colors.red[100],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 230,
                    child: Text(
                      'Beberapa produk sudah mau habis nih!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 150,
                      child: CustomButton(
                        onPressed: () {},
                        label: 'Cek Sekarang',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
