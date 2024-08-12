import 'package:flutter/material.dart';

import '../../features/qr_scanner.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void scanQRCode() async {
      final result = await Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const QRScanner()),
      );
      if (result != null) {
        _textController.text = result;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("QR Code Scanner"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'Scanned QR Code'),
              ),
              ElevatedButton(
                onPressed: scanQRCode,
                child: const Text("Press!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
