import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_dialog.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AuthProvider>(context);

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
            CustomTextField(label: 'Email', controller: emailController),
            const SizedBox(height: 12),
            CustomTextField(
              label: 'Password',
              obsecureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 32),
            CustomButton(
              onPressed: () {
                if (provider.login(
                    emailController.text, passwordController.text)) {
                  Fluttertoast.showToast(
                    msg: "Login Berhasil!",
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
                    msg: "Email/Password tidak sesuai!",
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
