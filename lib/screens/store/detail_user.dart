import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

import '../../components/drawer.dart';

class DetailUser extends StatefulWidget {
  const DetailUser({super.key});

  @override
  State<DetailUser> createState() => _DetailUserState();
}

class _DetailUserState extends State<DetailUser> {
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
    final args = ModalRoute.of(context)!.settings.arguments as String;
    var email = args.replaceAll(' ', '').toLowerCase();

    fullnameController = TextEditingController(text: args);
    emailController = TextEditingController(text: '$email@gmail.com');
    phoneController = TextEditingController(text: '082222222222');

    return Scaffold(
      appBar: const CustomAppBar(title: "Detail User"),
      drawer: const MyDrawer(active: 'Konfirmasi User'),
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
                    args,
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
                                "Apakah Anda yakin ingin menerima user ini?"),
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
                                  "Terima",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                    },
                    label: 'Terima',
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    type: 'secondary',
                    onPressed: () {
                      setState(() {
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
                                  style:
                                      TextStyle(color: CustomColor().primary),
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
                      });
                    },
                    label: 'Tolak',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
