import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.black87,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Contoh User Panjang'),
              accountEmail: Text('contoh.user.panjang@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              title: const Text('Home'),
              selected: true,
              selectedColor: Colors.white,
              selectedTileColor: Colors.black87,
              onTap: () {},
            ),
            ListTile(
              title: const Text('Edit Profile'),
              selectedColor: Colors.white,
              selectedTileColor: Colors.black87,
              onTap: () {},
            ),
            ListTile(
              title: const Text('Manajemen Kategori'),
              selectedColor: Colors.white,
              selectedTileColor: Colors.black87,
              onTap: () {},
            ),
            ListTile(
              title: const Text('Manajemen Produk'),
              selectedColor: Colors.white,
              selectedTileColor: Colors.black87,
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Center(
                  child: Text(
                'Anonymous',
                style: TextStyle(fontSize: 24, color: Colors.black87),
              )),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 24),
                backgroundColor: Colors.black87,
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
                backgroundColor: Colors.black87,
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
                backgroundColor: Colors.black87,
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
                backgroundColor: Colors.black87,
              ),
              child: const Center(child: Text('Logout')),
            ),
          ],
        ),
      ),
    );
  }
}
