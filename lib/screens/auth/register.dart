import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().background,
      body: SingleChildScrollView(
        child: Padding(
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
              CustomTextField(label: 'Nama'),
              const SizedBox(height: 12),
              CustomTextField(label: 'Email'),
              const SizedBox(height: 12),
              CustomTextField(label: 'No HP'),
              const SizedBox(height: 12),
              Text('Tanggal Lahir'),
              const SizedBox(height: 12),
              CustomButton(
                label: _selectedDate ?? 'Pilih Tanggal',
                type: 'secondary',
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2099),
                  ).then((date) {
                    setState(() {
                      _selectedDate = DateFormat('dd/MM/yyyy').format(date!);
                    });
                  });
                },
              ),
              const SizedBox(height: 12),
              CustomTextField(label: 'Password', obsecureText: true),
              const SizedBox(height: 12),
              CustomTextField(label: 'Konfirmasi Password', obsecureText: true),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/otp');
                },
                label: 'Register',
              ),
              const SizedBox(height: 24),
              const Center(child: Text('Sudah punya akun?')),
              const SizedBox(height: 24),
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
      ),
    );
  }
}
