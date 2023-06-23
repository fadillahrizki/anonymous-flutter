import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.obsecureText = false,
    this.maxLines = 1,
    required this.label,
    this.value = '',
  });

  final String label;
  final int maxLines;
  final bool obsecureText;

  String value;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 12),
        TextField(
          controller: controller,
          maxLines: maxLines,
          obscureText: obsecureText,
          cursorColor: CustomColor().primary,
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColor().white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomColor().primary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomColor().secondary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: 'Masukkan $label...',
          ),
        ),
      ],
    );
  }
}
