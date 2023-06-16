import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_dialog.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/drawer.dart';

class DetailStore extends StatefulWidget {
  const DetailStore({super.key});

  @override
  State<DetailStore> createState() => _DetailStoreState();
}

class _DetailStoreState extends State<DetailStore> {
  late TextEditingController fullnameController,
      emailController,
      addressController,
      descriptionController,
      phoneController;

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    fullnameController = TextEditingController(text: 'Rizky Fadillah');
    emailController = TextEditingController(text: 'fadillahrizki@gmail.com');
    phoneController = TextEditingController(text: '082222222222');
    addressController = TextEditingController(text: 'Medan, Sumatera Utara');
    descriptionController = TextEditingController(text: 'ini deskripsi Toko A');
  }

  @override
  void dispose() {
    fullnameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Manajemen Toko"),
      drawer: const MyDrawer(active: "Manajemen Toko"),
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
                      'A',
                      style:
                          TextStyle(color: CustomColor().white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Toko A',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Toko',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: fullnameController),
                  SizedBox(height: 12),
                  Text(
                    'No HP',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: phoneController),
                  SizedBox(height: 12),
                  Text(
                    'Alamat',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(enabled: isEditing, controller: addressController),
                  SizedBox(height: 12),
                  Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                      enabled: isEditing, controller: descriptionController),
                  SizedBox(height: 12),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    onPressed: () {
                      if (isEditing) {
                        showDialog(
                          context: context,
                          builder: (_) => CustomDialog(
                            content: [
                              CustomTextField(label: "Kode OTP"),
                              SizedBox(height: 12),
                              CustomButton(
                                onPressed: () {
                                  setState(() {
                                    isEditing = !isEditing;
                                  });
                                  Navigator.pop(context);
                                },
                                label: "Konfirmasi",
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
                      } else {
                        setState(() {
                          isEditing = !isEditing;
                        });
                      }
                    },
                    label: isEditing ? 'Selesai' : 'Edit Toko',
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/store/staff');
                    },
                    label: "Daftar Pegawai",
                    type: "secondary",
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/store/qr');
                    },
                    label: "Lihat QR Code",
                    type: "secondary",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
