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
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        backgroundColor: Colors.lime,
        primarySwatch: Colors.lime,
        scaffoldBackgroundColor: Colors.lime.shade100,
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
