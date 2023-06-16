import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrStore extends StatelessWidget {
  const QrStore({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController codeController =
        TextEditingController(text: 'A1B2C3');

    return Scaffold(
      appBar: CustomAppBar(title: 'QR Code Toko'),
      drawer: MyDrawer(),
      backgroundColor: CustomColor().background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: QrImageView(
                  data: codeController.text,
                  version: QrVersions.auto,
                  size: 200.0,
                  gapless: true,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                'Toko A',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Kode Toko',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            TextField(enabled: false, controller: codeController),
            SizedBox(height: 32),
            CustomButton(
                onPressed: () async {
                  await Clipboard.setData(
                      ClipboardData(text: codeController.text));
                  Fluttertoast.showToast(
                    msg: "Kode Toko sudah disalin!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    webBgColor: "#333",
                    webPosition: "center",
                    timeInSecForIosWeb: 2,
                    backgroundColor: CustomColor().primary,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                label: 'Salin Kode Toko'),
            SizedBox(height: 12),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'Kembali',
              type: 'secondary',
            ),
          ],
        ),
      ),
    );
  }
}
