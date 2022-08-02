import 'package:flutter/material.dart';

import 'danca_gatinho_danca_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Implicit Animation',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const DancaGatinhoDancaPage(),
    );
  }
}
