import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/components/search.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Search(),
              SizedBox(height: 24),
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, int index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/store/user/detail');
                      },
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      title: Text(items[index]),
                      leading: CircleAvatar(
                        child: Text(
                          items[index],
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 6,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Text(
                                      "Apakah Anda yakin ingin menerima user ini?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Batal",
                                        style: TextStyle(
                                            color: CustomColor().primary),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Terima",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Text(
                                      "Apakah Anda yakin ingin menolak user ini?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Batal",
                                        style: TextStyle(
                                            color: CustomColor().primary),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Tolak",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
