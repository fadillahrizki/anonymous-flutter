import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        color: CustomColor().background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                  child: Text(
                'Anonymous',
                style: TextStyle(fontSize: 24, color: CustomColor().primary),
              )),
            ),
            const CustomTextField(label: 'OTP'),
            const SizedBox(height: 32),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              label: 'Verifikasi',
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Belum menerima OTP?'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Kirim OTP',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'Kembali',
              type: 'secondary',
            ),
          ],
        ),
      ),
    );
  }
}
