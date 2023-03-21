import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Center(
                  child: Text(
                'Anonymous',
                style: TextStyle(fontSize: 24, color: Colors.black87),
              )),
            ),
            const Text('Nama'),
            const SizedBox(height: 12),
            const TextField(
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                border: OutlineInputBorder(),
                hintText: 'Masukkan Nama...',
              ),
            ),
            const SizedBox(height: 12),
            const Text('Username'),
            const SizedBox(height: 12),
            const TextField(
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                border: OutlineInputBorder(),
                hintText: 'Masukkan Username...',
              ),
            ),
            const SizedBox(height: 12),
            const Text('Password'),
            const SizedBox(height: 12),
            const TextField(
              obscureText: true,
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                border: OutlineInputBorder(),
                hintText: 'Masukkan Password...',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: Colors.black87,
              ),
              child: const Center(child: Text('Register')),
            ),
            const SizedBox(height: 32),
            const Center(child: Text('Sudah punya akun?')),
            const SizedBox(height: 32),
            OutlinedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                side: const BorderSide(color: Colors.black87),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
