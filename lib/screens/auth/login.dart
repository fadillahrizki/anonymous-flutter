import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            const CustomTextField(label: 'Email'),
            const SizedBox(height: 12),
            const CustomTextField(label: 'Password', obsecureText: true),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otp');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: CustomColor().primary,
              ),
              child: const Center(child: Text('Login')),
            ),
            const SizedBox(height: 32),
            const Center(child: Text('Belum punya akun?')),
            const SizedBox(height: 32),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                side: BorderSide(color: CustomColor().secondary),
                backgroundColor: CustomColor().white,
              ),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(color: CustomColor().primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}