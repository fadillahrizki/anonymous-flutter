import 'package:anonymous/components/CustomTextField.dart';
import 'package:anonymous/constants/CustomColor.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const CustomTextField(label: 'Username'),
            const SizedBox(height: 12),
            const CustomTextField(label: 'Password', obsecureText: true),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
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
                Navigator.pushReplacementNamed(context, '/register');
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                side: BorderSide(color: CustomColor().primary),
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
