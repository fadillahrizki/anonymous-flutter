import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class StaffStore extends StatefulWidget {
  const StaffStore({super.key});

  @override
  State<StaffStore> createState() => _StaffStoreState();
}

class _StaffStoreState extends State<StaffStore>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final List<String> items =
        List<String>.generate(20, (i) => 'Staff ${i + 1}');
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: const CustomAppBar(title: 'Manajemen Pegawai'),
      drawer: const MyDrawer(active: 'Manajemen Pegawai'),
      backgroundColor: CustomColor().background,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              margin: const EdgeInsets.only(bottom: 24, top: 12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: CustomColor().primary,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Aktif'),
                  Tab(text: 'Arsip'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, int index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          leading: CircleAvatar(
                            child: Text(
                              items[index],
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          title: Text(items[index]),
                          trailing: IconButton(
                            icon: const Icon(Icons.archive),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Text(
                                      "Apakah Anda yakin ingin mengarsipkannya?"),
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
                                        "Arsipkan",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, int index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          leading: CircleAvatar(
                            child: Text(
                              items[index],
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          title: Text(items[index]),
                          trailing: IconButton(
                            icon: const Icon(Icons.unarchive),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Text(
                                      "Apakah Anda yakin ingin mengaktifkan pegawai?"),
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
                                        "Aktifkan",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
