import 'package:flutter/material.dart';

import '../constants/custom_color.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              child: Text("RF"),
            ),
            accountName: const Text('Rizky Fadillah'),
            accountEmail: const Text('fadillahrizki@gmail.com'),
            decoration: BoxDecoration(
              color: CustomColor().primary,
            ),
          ),
          ListTile(
            title: const Text('Home'),
            selected: true,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Profile'),
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: const Text('Manajemen Kategori'),
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Manajemen Produk'),
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            trailing: Container(
              width: 8,
              height: 8,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Manajemen Pegawai'),
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Konfirmasi User'),
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Keluar'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
