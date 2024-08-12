import 'package:flutter/material.dart';
import 'package:qrscanner/app/features/qr_scanner.dart';
import 'package:qrscanner/app/views/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        "/scan": (context) => const QRScanner(),
      },
    );
  }
}
