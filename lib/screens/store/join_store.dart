import 'dart:io';

import 'package:anonymous/components/custom_appBar.dart';
import 'package:anonymous/components/custom_button.dart';
import 'package:anonymous/components/custom_text_field.dart';
import 'package:anonymous/components/drawer.dart';
import 'package:anonymous/constants/custom_color.dart';
import 'package:anonymous/screens/store/join_store_success.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class JoinStore extends StatefulWidget {
  const JoinStore({super.key});

  @override
  State<JoinStore> createState() => _JoinStoreState();
}

class _JoinStoreState extends State<JoinStore> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Gabung Toko'),
      drawer: MyDrawer(),
      backgroundColor: CustomColor().background,
      body: Column(
        children: [
          Expanded(flex: 3, child: _buildQrView(context)),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                children: [
                  CustomButton(
                    onPressed: () async {
                      await controller?.flipCamera();
                    },
                    label: 'Putar Kamera',
                  ),
                  SizedBox(height: 24),
                  if (result != null)
                    Text(
                      result!.code!,
                      style: TextStyle(fontSize: 24),
                    )
                  else
                    const Text(
                      'Silahkan Scan',
                      style: TextStyle(fontSize: 24),
                    ),
                  SizedBox(height: 24),
                  if (result != null) ...[
                    CustomButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/store/join/success',
                          (route) => false,
                          arguments: result!.code!,
                        );
                      },
                      label: 'Gabung Toko',
                    ),
                    SizedBox(height: 12),
                  ],
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
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: CustomColor().white,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
