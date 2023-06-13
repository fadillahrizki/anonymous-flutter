import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/search.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/custom_dialog.dart';
import '../../components/custom_text_field.dart';
import '../../components/drawer.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key});

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  final String assetName = '../../../assets/add.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: CustomColor().background,
      appBar: const CustomAppBar(title: "Manajemen Kategori"),
      drawer: const MyDrawer(active: "Manajemen Kategori"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: <Widget>[
              const Search(),
              SizedBox(height: 12),
              CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => CustomDialog(
                        content: [
                          CustomTextField(label: "Nama Kategori"),
                          SizedBox(height: 12),
                          CustomButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            label: "Tambah Kategori",
                          ),
                          SizedBox(height: 12),
                          CustomButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            label: "Kembali",
                            type: "secondary",
                          ),
                        ],
                      ),
                    );
                  },
                  label: 'Tambah Kategori'),
              SizedBox(height: 12),
              ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 16,
                        ),
                        child: Text('Kategori ${index + 1}'),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              content: Text(
                                "Apakah Anda yakin ingin menghapus kategori ini?",
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Batal",
                                    style:
                                        TextStyle(color: CustomColor().primary),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Hapus",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      onTap: () {},
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: SizedBox(
          width: 50,
          height: 50,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  width: 1,
                  color: CustomColor().secondary,
                ),
              ),
              onPressed: () {},
              backgroundColor: CustomColor().white,
              child: IconButton(
                iconSize: 30,
                color: CustomColor().primary,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Wrap(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(width: 1))),
                              child: const ListTile(
                                title: Text(
                                  "Urutkan Berdasarkan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 1),
                                ),
                              ),
                              child: ListTile(
                                title: const Text(
                                  "Nama Kategori",
                                  textAlign: TextAlign.center,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        );
                      });
                },
                icon: const Icon(
                  Icons.filter_alt_outlined,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
