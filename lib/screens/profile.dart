import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/home/new_user.dart';
import 'package:anonymous/components/statistic_card.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/screens/drawer.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late TextEditingController fullnameController,
      emailController,
      phoneController;

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    fullnameController = TextEditingController(text: 'Rizky Fadillah');
    emailController = TextEditingController(text: 'fadillahrizki@gmail.com');
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
      appBar: AppBar(
        title: Text(isEditing ? 'Edit Profile' : 'Profile'),
        backgroundColor: CustomColor().primary,
      ),
      drawer: const MyDrawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: CustomColor().background,
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
                      label: isEditing ? 'Unggah' : 'Unduh',
                      type: isEditing ? 'secondary' : 'primary',
                      size: 'mini',
                    ),
                  )
                ],
              ),
              CustomButton(
                onPressed: () {
                  setState(() {
                    isEditing = !isEditing;
                  });
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
