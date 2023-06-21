import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class JoinStoreSuccess extends StatelessWidget {
  const JoinStoreSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: CustomAppBar(title: 'Gabung Toko'),
      drawer: MyDrawer(),
      backgroundColor: CustomColor().background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check,
              size: 70,
            ),
            SizedBox(height: 24),
            Text(
              'Berhasil Bergabung ke Toko ${args}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 24),
            CustomButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
              },
              label: 'ke Halaman Dashboard',
            )
          ],
        ),
      ),
    );
  }
}
