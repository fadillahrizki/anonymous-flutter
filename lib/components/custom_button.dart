import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.type = 'primary',
    required this.onPressed,
    required this.label,
  });

  final String label;
  final GestureTapCallback onPressed;
  final String type;

  @override
  Widget build(BuildContext context) {
    if (type == 'primary') {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 24),
          backgroundColor: CustomColor().primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(child: Text(label)),
      );
    } else {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 24),
          side: BorderSide(color: CustomColor().secondary),
          backgroundColor: CustomColor().white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: CustomColor().primary),
          ),
        ),
      );
    }
  }
}
