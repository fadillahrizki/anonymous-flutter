import 'package:flutter/material.dart';

import '../constants/custom_color.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  final String assetName = '../../assets/FilterButton.svg';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: SizedBox(
          width: 50,
          height: 50,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(width: 1, color: CustomColor().secondary)),
              onPressed: () {},
              backgroundColor: CustomColor().white,
              child: IconButton(
                  iconSize: 30,
                  color: CustomColor().primary,
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.filter_alt_outlined)),
            ),
          )),
    );
  }
}