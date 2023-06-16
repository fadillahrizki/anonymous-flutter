import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/components/search.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/user_card.dart';

class UserStore extends StatefulWidget {
  const UserStore({super.key});

  @override
  State<UserStore> createState() => _UserStoreState();
}

class _UserStoreState extends State<UserStore> {
  @override
  Widget build(BuildContext context) {
    final List<String> items =
        List<String>.generate(20, (i) => 'User ${i + 1}');
    return Scaffold(
      appBar: const CustomAppBar(title: 'Konfirmasi User'),
      drawer: const MyDrawer(active: 'Konfirmasi User'),
      backgroundColor: CustomColor().background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Search(),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, int index) {
                  var item = items[index];
                  return UserCard(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
