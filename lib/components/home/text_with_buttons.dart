import 'package:anonymous/components/custom_button.dart';
import 'package:flutter/material.dart';

class TextWithButtons extends StatelessWidget {
  const TextWithButtons({
    super.key,
    required this.text,
    required this.onJoin,
    required this.onRegister,
  });

  final String text;
  final GestureTapCallback onJoin, onRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              child: CustomButton(
                label: 'Gabung',
                type: 'secondary',
                onPressed: onJoin,
              ),
            ),
            const SizedBox(width: 12),
            SizedBox(
              width: 120,
              child: CustomButton(
                label: 'Daftar',
                onPressed: onRegister,
              ),
            ),
          ],
        )
      ],
    );
  }
}
