import 'package:flutter/material.dart';

import 'elixirs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wizard World Elixirs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green.shade200,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const ElixirsPage(),
    );
  }
}
