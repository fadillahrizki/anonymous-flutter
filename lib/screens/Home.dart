import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../components/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.content, required this.title});

  final Widget content;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      drawer: MyDrawer(active: title),
      backgroundColor: CustomColor().background,
      body: content,
    );
  }
}
