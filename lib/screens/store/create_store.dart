import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';

class CreateStore extends StatelessWidget {
  const CreateStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Buat Toko'),
      drawer: MyDrawer(),
      backgroundColor: CustomColor().background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextField(label: 'Nama Toko'),
              const SizedBox(height: 12),
              const CustomTextField(label: 'No HP'),
              const SizedBox(height: 12),
              const CustomTextField(
                label: 'Alamat',
                maxLines: 6,
              ),
              const SizedBox(height: 12),
              const CustomTextField(
                label: 'Deskripsi',
                maxLines: 6,
              ),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/otp');
                },
                label: 'Buat Toko',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
