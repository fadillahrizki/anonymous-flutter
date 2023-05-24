import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.type = 'primary',
    this.size = 'normal',
    required this.onPressed,
    required this.label,
  });

  final String label, type, size;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (type == 'primary') {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: size == 'normal' ? 24 : 12),
          backgroundColor: CustomColor().primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: size == 'normal' ? 16 : 12,
            ),
          ),
        ),
      );
    } else {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: size == 'normal' ? 24 : 12),
          side: BorderSide(color: CustomColor().secondary),
          backgroundColor: CustomColor().white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: CustomColor().primary,
              fontSize: size == 'normal' ? 16 : 12,
            ),
          ),
        ),
      );
    }
  }
}
