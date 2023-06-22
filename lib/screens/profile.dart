import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_dialog.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../components/drawer.dart';
import 'package:flutter/material.dart';

import '../providers/user.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController fullnameController = TextEditingController(),
      emailController = TextEditingController(),
      phoneController = TextEditingController();

  bool isEditing = false;
  String? _selectedDate;

  @override
  void dispose() {
    super.dispose();
    fullnameController.dispose();
    emailController.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);

    fullnameController.text = userProvider.userLoggedIn.name;
    emailController.text = userProvider.userLoggedIn.email;
    phoneController.text = userProvider.userLoggedIn.phone;
    _selectedDate = userProvider.userLoggedIn.birthDate;

    return Scaffold(
      appBar: const CustomAppBar(title: "Profile"),
      drawer: const MyDrawer(active: 'Profile'),
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
                      userProvider.userLoggedIn.name[0],
                      style:
                          TextStyle(color: CustomColor().white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    userProvider.userLoggedIn.name,
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
                  TextField(
                    enabled: isEditing,
                    controller: fullnameController,
                    onChanged: (val) {
                      userProvider.userLoggedIn.name = val;
                    },
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    enabled: isEditing,
                    controller: emailController,
                    onChanged: (val) {
                      userProvider.userLoggedIn.email = val;
                    },
                  ),
                  SizedBox(height: 12),
                  Text(
                    'No Hp',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    enabled: isEditing,
                    controller: phoneController,
                    onChanged: (val) {
                      userProvider.userLoggedIn.phone = val;
                    },
                  ),
                  SizedBox(height: 12),
                  Text('Tanggal Lahir'),
                  const SizedBox(height: 12),
                  CustomButton(
                    enabled: isEditing,
                    label: _selectedDate ?? 'Pilih Tanggal',
                    type: 'secondary',
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),
                      ).then((date) {
                        setState(() {
                          _selectedDate =
                              DateFormat('dd/MM/yyyy').format(date!);
                          userProvider.userLoggedIn.birthDate = _selectedDate!;
                        });
                      });
                    },
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
                      label: isEditing ? 'Unggah' : 'Unduh',
                      type: isEditing ? 'secondary' : 'primary',
                      size: 'mini',
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
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
                label: isEditing ? 'Selesai' : 'Edit Profile',
              )
            ],
          ),
        ),
      ),
    );
  }
}
