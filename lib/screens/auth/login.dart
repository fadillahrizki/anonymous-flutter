import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().background,
      body: Padding(
        padding: const EdgeInsets.all(24),
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
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otp');
              },
              label: 'Login',
            ),
            const SizedBox(height: 24),
            const Center(child: Text('Belum punya akun?')),
            const SizedBox(height: 24),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/register');
              },
              label: 'Register',
              type: 'secondary',
            ),
          ],
        ),
      ),
    );
  }
}
