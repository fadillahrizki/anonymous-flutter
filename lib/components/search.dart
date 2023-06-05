import 'package:flutter/material.dart';

import '../constants/custom_color.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TextField(
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
              hintText: 'Cari...',
            ),
          ),
        ),
        SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: CustomColor().white,
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 1,
              color: CustomColor().secondary,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        )
      ],
    );
  }
}
