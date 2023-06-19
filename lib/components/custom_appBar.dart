import 'package:flutter/material.dart';
import '../constants/custom_color.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final String assetName = 'assets/hamburger.png';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      toolbarHeight: 100,
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Image(image: AssetImage(assetName)),
        ),
      ),
      backgroundColor: CustomColor().background,
      shadowColor: Colors.transparent,
      title: Text(
        widget.title,
        style: TextStyle(
            color: CustomColor().primary, fontWeight: FontWeight.w600),
      ),
    );
  }
}
