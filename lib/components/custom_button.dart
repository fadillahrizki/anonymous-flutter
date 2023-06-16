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
          padding: EdgeInsets.symmetric(vertical: size == 'normal' ? 14 : 10),
          backgroundColor: CustomColor().primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: size == 'normal' ? 14 : 10,
            ),
          ),
        ),
      );
    } else {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: size == 'normal' ? 14 : 10),
          side: BorderSide(color: CustomColor().secondary),
          backgroundColor: CustomColor().white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: CustomColor().primary,
              fontSize: size == 'normal' ? 14 : 10,
            ),
          ),
        ),
      );
    }
  }
}
