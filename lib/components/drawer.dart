import 'package:flutter/material.dart';

import '../constants/custom_color.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    this.active = 'Home',
  });

  final String active;

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
            selected: active == 'Home' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('Profile'),
            selected: active == 'Profile' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushReplacementNamed(context, '/profile');
            },
          ),
          ListTile(
            title: const Text('Manajemen Kategori'),
            selected: active == 'Manajemen Kategori' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Manajemen Produk'),
            selected: active == 'Manajemen Produk' ? true : false,
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
            onTap: () {
              Navigator.pushReplacementNamed(context, '/product');
            },
          ),
          ListTile(
            title: const Text('Manajemen Pegawai'),
            selected: active == 'Manajemen Pegawai' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Konfirmasi User'),
            selected: active == 'Konfirmasi User' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushReplacementNamed(context, '/store/user');
            },
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
