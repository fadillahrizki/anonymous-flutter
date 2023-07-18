import 'dart:js_interop';

import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/providers/auth.dart';
import 'package:anonymous/providers/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? _selectedDate;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);

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
              CustomTextField(
                label: 'Nama',
                controller: nameController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: 'No HP',
                controller: phoneController,
              ),
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
              CustomTextField(
                label: 'Password',
                obsecureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: 'Konfirmasi Password',
                obsecureText: true,
                controller: confirmPasswordController,
              ),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  if ((nameController.text.isEmpty) ||
                      (emailController.text.isEmpty) ||
                      (passwordController.text.isEmpty) ||
                      (phoneController.text.isEmpty) ||
                      (_selectedDate.isNull)) {
                    Fluttertoast.showToast(
                      msg: "Mohon mengisi semua formulir!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      webBgColor: "orange",
                      webPosition: "center",
                      timeInSecForIosWeb: 2,
                      backgroundColor: CustomColor().primary,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  } else {
                    if (passwordController.text ==
                        confirmPasswordController.text) {
                      var newUser = User(
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        phone: phoneController.text,
                        birthDate: _selectedDate.toString(),
                        role: "new-user",
                      );
                      var result = authProvider.register(newUser);

                      if (result) {
                        Fluttertoast.showToast(
                          msg: "Berhasil daftar user baru!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          webBgColor: "green",
                          webPosition: "center",
                          timeInSecForIosWeb: 2,
                          backgroundColor: CustomColor().primary,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );

                        Navigator.pushNamed(context, '/otp');
                      } else {
                        Fluttertoast.showToast(
                          msg: "Gagal daftar user baru!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          webBgColor: "red",
                          webPosition: "center",
                          timeInSecForIosWeb: 2,
                          backgroundColor: CustomColor().primary,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
                    } else {
                      Fluttertoast.showToast(
                        msg: "Konfirmasi Password tidak sesuai!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        webBgColor: "red",
                        webPosition: "center",
                        timeInSecForIosWeb: 2,
                        backgroundColor: CustomColor().primary,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  }
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
