import 'package:flutter/material.dart';
import 'package:qr_master/themes/theme_provider.dart';
import 'package:provider/provider.dart';
//import 'pages/home_page.dart';
import 'package:qr_master/pages/scan_qr_code.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScanQRCodePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
