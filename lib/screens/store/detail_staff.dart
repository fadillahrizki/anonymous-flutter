import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/drawer.dart';

class DetailStaff extends StatefulWidget {
  const DetailStaff({super.key});

  @override
  State<DetailStaff> createState() => _DetailStaffState();
}

class _DetailStaffState extends State<DetailStaff> {
  late TextEditingController fullnameController,
      emailController,
      phoneController;

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    fullnameController = TextEditingController(text: 'Staff 1');
    emailController = TextEditingController(text: 'staff1@gmail.com');
    phoneController = TextEditingController(text: '082222222222');
  }

  @override
  void dispose() {
    fullnameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Detail Pegawai"),
      drawer: const MyDrawer(active: 'Detail Pegawai'),
      backgroundColor: CustomColor().background,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: CustomColor().primary,
                    child: Text(
                      'Rizky.F',
                      style:
                          TextStyle(color: CustomColor().white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Rizky Fadillah',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Lengkap',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: fullnameController),
                  SizedBox(height: 12),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: emailController),
                  SizedBox(height: 12),
                  Text(
                    'No Hp',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: phoneController),
                  SizedBox(height: 12),
                  Text(
                    'KTP',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: 80,
                    child: CustomButton(
                      onPressed: () {},
                      label: 'Unduh',
                      type: 'primary',
                      size: 'mini',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    onPressed: () {
                      setState(() {
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
                                  style:
                                      TextStyle(color: CustomColor().primary),
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
                      });
                    },
                    label: 'Arsipkan',
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    type: 'secondary',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: 'Kembali',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}