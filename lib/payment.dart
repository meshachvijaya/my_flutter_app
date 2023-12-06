import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const Payment());
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImageView(
          version: 6,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(30),
          size: 300,
          data: "https://netafel.com",
        ),
      ),
    );
  }
}
