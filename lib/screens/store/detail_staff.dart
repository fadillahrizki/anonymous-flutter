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
  String _selectedDate = "01/01/2003";

  @override
  void initState() {
    super.initState();
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
    final args = ModalRoute.of(context)!.settings.arguments as List;
    var item = args[0] as String;
    var isActive = args[1] as bool;
    var email = item.replaceAll(' ', '').toLowerCase();
    fullnameController = TextEditingController(text: item);
    emailController = TextEditingController(text: '$email@gmail.com');
    phoneController = TextEditingController(text: '082222222222');
    return Scaffold(
      appBar: const CustomAppBar(title: "Detail Pegawai"),
      drawer: const MyDrawer(active: 'Manajemen Pegawai'),
      backgroundColor: CustomColor().background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: CustomColor().primary,
                    child: Text(
                      args[0],
                      style:
                          TextStyle(color: CustomColor().white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    item,
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
                  Text('Tanggal Lahir'),
                  const SizedBox(height: 12),
                  CustomButton(
                    enabled: isEditing,
                    label: _selectedDate,
                    type: 'secondary',
                    onPressed: () {},
                  ),
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
              SizedBox(height: 24),
              Column(
                children: [
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            content: Text(
                                "Apakah Anda yakin ingin ${isActive ? 'mengarsipkannya' : 'mengaktifkannya'}?"),
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
                                  isActive ? "Arsipkan" : "Aktifkan",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                    },
                    label: isActive ? 'Arsipkan' : 'Aktifkan',
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
