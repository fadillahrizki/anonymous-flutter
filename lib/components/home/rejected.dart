import 'package:anonymous/components/home/text_with_buttons.dart';
import 'package:flutter/material.dart';

class Rejected extends StatelessWidget {
  const Rejected({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWithButtons(
      text:
          'Permintaan anda ditolak oleh Pihak Toko.\nSilahkan Gabung atau Daftar Toko Anda!',
      onJoin: () {},
      onRegister: () {},
    );
  }
}
