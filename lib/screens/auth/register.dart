import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
            const CustomTextField(label: 'Nama'),
            const SizedBox(height: 12),
            const CustomTextField(label: 'Email'),
            const SizedBox(height: 12),
            const CustomTextField(label: 'No HP'),
            const SizedBox(height: 12),
            const CustomTextField(label: 'Password', obsecureText: true),
            const SizedBox(height: 12),
            const CustomTextField(
                label: 'Konfirmasi Password', obsecureText: true),
            const SizedBox(height: 32),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otp');
              },
              label: 'Register',
            ),
            const SizedBox(height: 32),
            const Center(child: Text('Sudah punya akun?')),
            const SizedBox(height: 32),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              label: 'Login',
              type: 'secondary',
            ),
          ],
        ),
      ),
    );
  }
}
