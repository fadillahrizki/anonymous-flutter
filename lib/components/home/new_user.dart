import 'package:anonymous/components/home/text_with_buttons.dart';
import 'package:flutter/material.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWithButtons(
      text:
          'Anda belum masuk ke Toko. \nSilahkan Gabung atau Daftar Toko Anda!',
      onJoin: () {
        Navigator.pushNamed(context, '/store/join');
      },
      onRegister: () {
        Navigator.pushNamed(context, '/store/create');
      },
    );
  }
}
