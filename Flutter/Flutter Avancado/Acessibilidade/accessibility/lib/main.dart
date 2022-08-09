import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acessibilidade',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        scaffoldBackgroundColor: Colors.lime.shade50,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lime,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
