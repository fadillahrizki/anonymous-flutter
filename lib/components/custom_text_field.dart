import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.obsecureText = false,
    required this.label,
  });

  final String label;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 12),
        TextField(
          obscureText: obsecureText,
          cursorColor: CustomColor().primary,
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColor().white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomColor().primary,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomColor().secondary,
              ),
            ),
            hintText: 'Masukkan $label...',
          ),
        ),
      ],
    );
  }
}
