import 'package:anonymous/components/home/text_only.dart';
import 'package:flutter/material.dart';

class WaitingConfirm extends StatelessWidget {
  const WaitingConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextOnly(
        text:
            'Permintaan anda sedang diproses.\nMohon tunggu untuk konfirmasi Pihak Toko!');
  }
}
