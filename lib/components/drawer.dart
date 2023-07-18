import 'package:anonymous/providers/auth.dart';
import 'package:anonymous/providers/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/custom_color.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    this.active = 'Home',
  });

  final String active;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text(authProvider.userLoggedIn.name[0]),
            ),
            accountName: Text(authProvider.userLoggedIn.name),
            accountEmail: Text(authProvider.userLoggedIn.email),
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
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', ModalRoute.withName('/'));
            },
          ),
          ListTile(
            title: const Text('Profile'),
            selected: active == 'Profile' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/profile', ModalRoute.withName('/'));
            },
          ),
          ListTile(
            title: const Text('Manajemen Toko'),
            selected: active == 'Manajemen Toko' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/store/detail', ModalRoute.withName('/'));
            },
          ),
          ListTile(
            title: const Text('Manajemen Kategori'),
            selected: active == 'Manajemen Kategori' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/category', ModalRoute.withName('/'));
            },
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
              Navigator.pushNamedAndRemoveUntil(
                  context, '/product', ModalRoute.withName('/'));
            },
          ),
          ListTile(
            title: const Text('Manajemen Pegawai'),
            selected: active == 'Manajemen Pegawai' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/store/staff', ModalRoute.withName('/'));
            },
          ),
          ListTile(
            title: const Text('Konfirmasi User'),
            selected: active == 'Konfirmasi User' ? true : false,
            selectedColor: Colors.white,
            selectedTileColor: CustomColor().primary,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/store/user', ModalRoute.withName('/'));
            },
          ),
          ListTile(
            title: const Text('Keluar'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', ModalRoute.withName('/'));
            },
          ),
        ],
      ),
    );
  }
}
