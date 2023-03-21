import 'package:anonymous/constants/CustomColor.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: CustomColor().primary,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Contoh User Panjang'),
              accountEmail: const Text('contoh.user.panjang@gmail.com'),
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
              title: const Text('Edit Profile'),
              selectedColor: Colors.white,
              selectedTileColor: CustomColor().primary,
              onTap: () {},
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
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                  child: Text(
                'Anonymous',
                style: TextStyle(fontSize: 24, color: CustomColor().primary),
              )),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: CustomColor().primary,
              ),
              child: const Center(child: Text('Edit Profile')),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/register');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: CustomColor().primary,
              ),
              child: const Center(child: Text('Manajemen Kategori')),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/register');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: CustomColor().primary,
              ),
              child: const Center(child: Text('Manajemen Produk')),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: CustomColor().primary,
              ),
              child: const Center(child: Text('Logout')),
            ),
          ],
        ),
      ),
    );
  }
}
