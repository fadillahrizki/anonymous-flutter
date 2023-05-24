import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/home/new_user.dart';
import 'package:anonymous/components/statistic_card.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/screens/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: CustomColor().primary,
      ),
      drawer: const MyDrawer(),
      body: Container(
        color: CustomColor().background,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
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
                        Text(
                          'Toko A',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'deskripsi toko singkat',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 6),
                        CustomButton(
                          onPressed: () {},
                          label: 'Lihat',
                          size: 'mini',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const StatisticCard(
                title: 'Total User',
                subtitle: '50 User',
                text: 'User',
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
            ],
          ),
        ),
      ),
    );
  }
}
